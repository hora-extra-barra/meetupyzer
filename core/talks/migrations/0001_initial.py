# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('announcers', '0001_initial'),
        ('meetups', '0003_auto_20150428_1630'),
    ]

    operations = [
        migrations.CreateModel(
            name='Talk',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=255, verbose_name='t\xedtulo')),
                ('description', models.TextField(verbose_name='descri\xe7\xe3o')),
                ('announcer', models.ForeignKey(to='announcers.Announcer')),
                ('meetup', models.ForeignKey(to='meetups.Meetup')),
            ],
            options={
                'verbose_name': 'Talk',
                'verbose_name_plural': 'Talks',
            },
        ),
    ]
