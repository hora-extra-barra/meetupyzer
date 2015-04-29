# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('organizations', '0003_auto_20150428_1457'),
    ]

    operations = [
        migrations.CreateModel(
            name='Meetup',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('edition', models.CharField(unique=True, max_length=255, verbose_name='edi\xe7\xe3o')),
                ('description', models.TextField(null=True, verbose_name='descri\xe7\xe3o', blank=True)),
                ('cover_image', models.ImageField(upload_to=b'', null=True, verbose_name='imagem_capa', blank=True)),
                ('hashtag', models.CharField(max_length=255, null=True, verbose_name='hashtag', blank=True)),
                ('address', models.CharField(unique=True, max_length=255, verbose_name='endere\xe7o')),
                ('day_of_meet', models.DateTimeField(verbose_name='dia_encontro')),
                ('vacancies', models.IntegerField(verbose_name='vagas')),
                ('fk_organizations', models.ForeignKey(to='organizations.Organization')),
            ],
            options={
                'verbose_name': 'Meetup',
                'verbose_name_plural': 'Meetups',
            },
        ),
    ]
