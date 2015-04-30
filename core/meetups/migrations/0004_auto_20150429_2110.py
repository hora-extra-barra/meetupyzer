# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('meetups', '0003_auto_20150428_1630'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='meetup',
            options={'ordering': ['-id'], 'verbose_name': 'Meetup', 'verbose_name_plural': 'Meetups'},
        ),
    ]
