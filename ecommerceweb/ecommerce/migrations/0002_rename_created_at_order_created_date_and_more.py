# Generated by Django 4.2 on 2023-04-27 17:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('ecommerce', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='created_at',
            new_name='created_date',
        ),
        migrations.RenameField(
            model_name='order',
            old_name='updated_at',
            new_name='updated_date',
        ),
        migrations.RenameField(
            model_name='product',
            old_name='created_at',
            new_name='created_date',
        ),
        migrations.RenameField(
            model_name='product',
            old_name='updated_at',
            new_name='updated_date',
        ),
        migrations.RenameField(
            model_name='store',
            old_name='created_at',
            new_name='created_date',
        ),
        migrations.RenameField(
            model_name='store',
            old_name='updated_at',
            new_name='updated_date',
        ),
    ]
