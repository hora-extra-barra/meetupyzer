# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('organizations', '0002_auto_20150428_1443'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='organization',
            options={'verbose_name': 'Organiza\xe7\xe3o', 'verbose_name_plural': 'Organiza\xe7\xf5es'},
        ),
    ]
