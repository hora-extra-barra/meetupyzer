# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('archives', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='archive',
            name='talk_url',
            field=models.CharField(max_length=255, null=True, verbose_name='url', blank=True),
        ),
    ]
