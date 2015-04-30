# -*- encoding: utf-8 -*-
from django.db import models

# Create your models here.
class Archive(models.Model):
    title = models.CharField(u"título",max_length=255, blank=False, null=False)
    description = models.TextField(u"descrição", blank=True, null=True)
    talk_file = models.FileField(u"arquivo", blank=True, null=True)
    
    CHOICES = (
        ('S', 'Slide'),
        ('V', 'Vídeo'),
        ('L', 'Link'),
        ('F', 'Foto'),
        ('P', 'PDF'),
        ('T', 'TXT'),
        ('A', 'Anotação'),
    )
    talk_type = models.CharField(u"tipo",max_length=1, choices=CHOICES, blank=False, null=False)
    talk_url = models.CharField(u"url",max_length=255, blank=True, null=True)

    talk = models.ForeignKey('talks.Talk')

    class Meta:
        verbose_name = u'Arquivo'
        verbose_name_plural = u'Arquivos'

    def __unicode__(self):
        return self.title