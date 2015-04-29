# -*- encoding: utf-8 -*-
from django.db import models

# Create your models here.
class Talk(models.Model):
    title = models.CharField(u"título",max_length=255, blank=False, null=False)
    description = models.TextField(u"descrição",blank=False, null=False)

    meetup = models.ForeignKey('meetups.Meetup')
    announcer = models.ForeignKey('announcers.Announcer')

    class Meta:
        verbose_name = u'Talk'
        verbose_name_plural = u'Talks'
        ordering = ["-id"]

    def __unicode__(self):
        return "%s : %s" % (self.title,self.announcer)