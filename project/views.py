# -*- coding: utf-8 -*-

from project import app


@app.register('/')
def index(request):
    """ Get a current logged user and render a template to HTML. """
    user = yield from app.ps.session.load_user(request)
    return app.ps.jinja2.render('index.html', user=user, view='index')
