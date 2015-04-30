# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('archives', '0002_auto_20150428_1652'),
    ]

    operations = [
        migrations.AlterField(
            model_name='archive',
            name='talk_type',
            field=models.CharField(max_length=1, verbose_name='tipo', choices=[(b'S', b'Slide'), (b'V', b'V\xc3\xaddeo'), (b'L', b'Link'), (b'F', b'Foto'), (b'P', b'PDF'), (b'T', b'TXT'), (b'A', b'Anota\xc3\xa7\xc3\xa3o')]),
        ),
    ]
