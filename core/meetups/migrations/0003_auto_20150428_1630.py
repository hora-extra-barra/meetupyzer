# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('meetups', '0002_auto_20150428_1459'),
    ]

    operations = [
        migrations.AlterField(
            model_name='meetup',
            name='address',
            field=models.CharField(max_length=255, verbose_name='endere\xe7o'),
        ),
    ]
