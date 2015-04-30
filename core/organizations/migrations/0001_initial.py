# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Organization',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(unique=True, max_length=255, verbose_name='nome')),
                ('description', models.TextField(null=True, verbose_name='descricao', blank=True)),
                ('logo', models.ImageField(upload_to=b'', verbose_name='logo')),
            ],
        ),
    ]
