"""This is a docstring, it describes what this file does."""
import tornado.ioloop
import tornado.web


class JSHandler(tornado.web.RequestHandler):
    """The Handler that will return the javascript for our site."""

    def get(self):
        self.write(open('myscript.js').read())


class IndexHandler(tornado.web.RequestHandler):
    """The Index HTML Handler."""

    def get(self):
        self.write(open('index.html').read())

def main():
    """Entry point for the file."""
    app = tornado.web.Application([
        (r'/', IndexHandler),
        (r'/myscript\.js', JSHandler),
    ], debug=True)
    app.listen(8080)
    print('Starting server with port 8080')
    tornado.ioloop.IOLoop.current().start()

if __name__ == '__main__':
    main()
