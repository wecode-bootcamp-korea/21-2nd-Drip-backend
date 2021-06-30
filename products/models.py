from django.db import models

class Category(models.Model):
    name = models.CharField(max_length=45)

    class Meta:
        db_table = 'categories'

class SubCategory(models.Model):
    name     = models.CharField(max_length=45)
    discount = models.DecimalField(max_digits=3, decimal_places=2, default=1)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)

    class Meta:
        db_table = 'sub_categories'

class Search(models.Model):
    count = models.IntegerField(default=0)

    class Meta:
        db_table = 'searched'

class Product(models.Model):
    name         = models.CharField(max_length=100)
    price        = models.DecimalField(max_digits=8, decimal_places=1)
    main_image   = models.URLField(max_length=200)
    description  = models.URLField(max_length=200)
    created_at   = models.DateTimeField(auto_now_add=True)
    address      = models.CharField(max_length=100)
    sell_count   = models.IntegerField()
    date         = models.DateField()
    latitude     = models.DecimalField(max_digits=5, decimal_places=4, null=True)
    longitude    = models.DecimalField(max_digits=5, decimal_places=4, null=True)
    sub_category = models.ForeignKey(SubCategory, on_delete=models.CASCADE)
    searched     = models.ForeignKey(Search, on_delete=models.CASCADE)

    class Meta:
        db_table = 'products'