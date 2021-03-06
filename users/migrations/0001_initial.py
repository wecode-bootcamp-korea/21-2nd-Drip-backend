# Generated by Django 3.2.4 on 2021-06-23 09:11

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(max_length=45, null=True, unique=True)),
                ('name', models.CharField(max_length=45, null=True)),
                ('profile_image', models.URLField(null=True)),
                ('origin_pk', models.IntegerField()),
            ],
            options={
                'db_table': 'users',
            },
        ),
    ]
