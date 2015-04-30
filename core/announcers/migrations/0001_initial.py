# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Announcer',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name='nome')),
                ('bio', models.TextField(null=True, verbose_name='biografia', blank=True)),
                ('photo', models.ImageField(upload_to=b'', null=True, verbose_name='foto', blank=True)),
            ],
            options={
                'verbose_name': 'Palestrante',
                'verbose_name_plural': 'Palestrantes',
            },
        ),
    ]
