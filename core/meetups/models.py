# -*- encoding: utf-8 -*-
from django.db import models

# Create your models here.
class Meetup(models.Model):
    edition = models.CharField(u"edição",max_length=255, blank=False, null=False, unique=True)
    description = models.TextField(u"descrição",blank=True, null=True)
    cover_image = models.ImageField(u"imagem_capa", blank=True, null=True)
    hashtag = models.CharField(u"hashtag",max_length=255, blank=True, null=True)
    address = models.CharField(u"endereço",max_length=255, blank=False, null=False)
    day_of_meet = models.DateTimeField(u"dia_encontro", blank=False, null=False)
    vacancies = models.IntegerField(u"vagas", blank=False, null=False)

    organization = models.ForeignKey('organizations.Organization')

    class Meta:
        verbose_name = u'Meetup'
        verbose_name_plural = u'Meetups'
        ordering = ["-id"]

    def __unicode__(self):
        return "%s %s" % (self.organization.name, self.edition)