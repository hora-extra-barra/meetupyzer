# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('talks', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Archive',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=255, verbose_name='t\xedtulo')),
                ('description', models.TextField(null=True, verbose_name='descri\xe7\xe3o', blank=True)),
                ('talk_file', models.FileField(upload_to=b'', null=True, verbose_name='arquivo', blank=True)),
                ('talk_type', models.CharField(max_length=1, verbose_name='tipo')),
                ('talk_url', models.CharField(max_length=255, verbose_name='tipo')),
                ('talk', models.ForeignKey(to='talks.Talk')),
            ],
            options={
                'verbose_name': 'Arquivo',
                'verbose_name_plural': 'Arquivos',
            },
        ),
    ]
