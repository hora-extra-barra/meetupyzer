# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('organizations', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='organization',
            name='description',
            field=models.TextField(null=True, verbose_name='descri\xe7\xe3o', blank=True),
        ),
        migrations.AlterField(
            model_name='organization',
            name='logo',
            field=models.ImageField(upload_to=b'', null=True, verbose_name='logo', blank=True),
        ),
    ]
