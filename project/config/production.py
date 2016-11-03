# -*- coding: utf-8 -*-

import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Muffin
# ======

PLUGINS = (

    # Contrib plugins
    'muffin_jinja2',
    'muffin_session',
    'muffin_oauth',
    'muffin_admin',
    'muffin_debugtoolbar',
)


STATIC_ROOT = os.path.join(BASE_DIR, 'static')

# Plugin options
# ==============

SESSION_SECRET = 'SecretHere'
JINJA2_TEMPLATE_FOLDERS = os.path.join(BASE_DIR, 'templates')

DEBUGTOOLBAR_EXCLUDE = ['/static']
DEBUGTOOLBAR_HOSTS = ['0.0.0.0/0']
DEBUGTOOLBAR_INTERCEPT_REDIRECTS = False
DEBUGTOOLBAR_ADDITIONAL_PANELS = [
    'muffin_jinja2',
]
