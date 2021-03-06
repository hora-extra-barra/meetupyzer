from django.conf import settings
from django.conf.urls import patterns, include, url
from django.conf.urls.static import static

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    #url('^', include('django.contrib.auth.urls')),
    url(r'^$', 'geral.views.home', name='home'),
    url(r'^login/$', 'geral.views.auth_login', name='auth_login'),
    url(r'^logout/$', 'geral.views.auth_logout', name='auth_logout'),

    url(r'^organizacao/', 'organizations.views.dashboard', name='org_dashboard'),
    url(r'^meetups/', 'meetups.views.dashboard', name='meet_dashboard'),
    url(r'^talks/', 'talks.views.dashboard', name='talk_dashboard'),
    
    url(r'^palestrantes/$', 'announcers.views.dashboard', name='ann_dashboard'),
    url(r'^palestrantes/palestrante$', 'announcers.views.ann_form', name='ann_form'),
    url(r'^palestrantes/(?P<id>[0-9]+)/$', 'announcers.views.ann_form', name='ann_form'),
    url(r'^palestrantes/add/$', 'announcers.views.ann_add', name='ann_add'),
    url(r'^palestrantes/excluir/(?P<id>[0-9]+)/$', 'announcers.views.ann_remove', name='ann_remove'),

    url(r'^admin/', include(admin.site.urls)),
)

if settings.DEBUG:
    urlpatterns = urlpatterns + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += patterns('django.views.static',
                            (r'media/(?P<path>.*)', 'serve', {'document_root': settings.MEDIA_ROOT,
                                                              'show_indexes': True}),)