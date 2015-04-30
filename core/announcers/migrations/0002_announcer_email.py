# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('announcers', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='announcer',
            name='email',
            field=models.CharField(default='email@ad.com', unique=True, max_length=255, verbose_name='email'),
            preserve_default=False,
        ),
    ]
