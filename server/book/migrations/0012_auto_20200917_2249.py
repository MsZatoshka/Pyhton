# Generated by Django 3.1.1 on 2020-09-17 19:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('book', '0011_auto_20200916_2257'),
    ]

    operations = [
        migrations.AlterModelTable(
            name='genre',
            table='genreBook',
        ),
    ]