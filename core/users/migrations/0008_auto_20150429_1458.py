# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.contrib.auth.models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0007_auto_20150429_1456'),
    ]

    operations = [
        migrations.AlterModelManagers(
            name='user',
            managers=[
                (b'objects', django.contrib.auth.models.UserManager()),
            ],
        ),
    ]
