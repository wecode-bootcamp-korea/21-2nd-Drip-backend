from django.db import models

class User(models.Model):
    email         = models.EmailField(max_length=45, unique=True, null=True)
    name          = models.CharField(max_length=45, null=True)
    profile_image = models.URLField(max_length=200, null=True)
    origin_pk     = models.CharField(max_length=45)

    class Meta:
        db_table = 'users'