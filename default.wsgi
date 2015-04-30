#!/www/virtualenvs/stormsec_com_br/lib/python2.7/site-packages python2.7
import os
import sys
import site

WSGI_BASE_DIR = os.path.abspath(os.path.dirname(__file__))

# INFRA: A string 'core' deve ser substituida pela pasta onde se encontra o arquivo manage.py
PROJECT_ROOT_DIR = os.path.join(WSGI_BASE_DIR, 'core')
SITE_PACKAGES = "/www/virtualenvs/stormsec_com_br/lib/python2.7/site-packages"

site.addsitedir(os.path.abspath(SITE_PACKAGES))
sys.path.insert(0, os.path.abspath(PROJECT_ROOT_DIR))
sys.path.insert(0, SITE_PACKAGES)

# INFRA: A string 'geral.settings' deve ser substituida pelo 'path' (substituindo / por . e removendo o .py)
#        do arquivo settings.py em relacao ao PROJECT_ROOT_DIR.
#
#        Exemplo:
#	     A estrutura abaixo
#        |- core
#        |--|- manage.py
#        |--|- aplicativo
#        |--|--|- settings.py
#        |--|--|- urls.py
#        |--|- (...)
#        |-- media
#        |-- (...)
#        Resultaria no valor 'aplicativo.settings'
os.environ['DJANGO_SETTINGS_MODULE'] = 'geral.settings'

# =================================================================
# Trecho substituido segundo a fonte: 
# http://stackoverflow.com/questions/26276397/django-1-7-upgrade-error-appregistrynotready-apps-arent-loaded-yet

# DE:
#import django.core.handlers.wsgi
#application = django.core.handlers.wsgi.WSGIHandler()

# PARA:
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
# =================================================================