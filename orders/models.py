from django.db import models

class Status(models.Model):
    name = models.CharField(max_length=20)

    class Meta:
        db_table = 'status'

class Order(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    user       = models.ForeignKey('users.User', on_delete=models.CASCADE)
    status     = models.ForeignKey(Status, on_delete=models.CASCADE)
    product    = models.ForeignKey('products.Product', on_delete=models.CASCADE)

    class Meta:
        db_table = 'orders'