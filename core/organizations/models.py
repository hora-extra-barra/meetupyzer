# -*- encoding: utf-8 -*-
from django.db import models

# Create your models here.
class Organization(models.Model):
    name = models.CharField(u"nome",max_length=255, blank=False, null=False, unique=True)
    description = models.TextField(u"descrição",blank=True, null=True)
    logo = models.ImageField(u"logo", blank=True, null=True)

    class Meta:
        verbose_name = u'Organização'
        verbose_name_plural = u'Organizações'

    def __unicode__(self):
        return self.name