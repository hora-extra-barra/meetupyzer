# -*- encoding: utf-8 -*-
from django.db import models
from django.core import serializers

# Create your models here.
class Announcer(models.Model):
    name = models.CharField(u"nome", max_length=255, blank=False, null=False)
    bio = models.TextField(u"biografia", blank=True, null=True)
    photo = models.ImageField(u"foto", blank=False, null=False)
    email = models.EmailField(u"email",max_length=255, blank=False, null=False, unique=True)

    class Meta:
        verbose_name = u'Palestrante'
        verbose_name_plural = u'Palestrantes'

    def __unicode__(self):
        return self.name