from django.db import models

class Review(models.Model):
    content    = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    image_url  = models.URLField(max_length=200)
    rating     = models.DecimalField(max_digits=2, decimal_places=1)
    product    = models.ForeignKey('products.Product', on_delete=models.CASCADE)
    user       = models.ForeignKey('users.User', on_delete=models.CASCADE)

    class Meta:
        db_table = 'reviews'

class Like(models.Model):
    review = models.ForeignKey(Review, on_delete=models.CASCADE)
    user   = models.ForeignKey('users.User', on_delete=models.CASCADE)

    class Meta:
        db_table = 'likes'

class Comment(models.Model):
    user    = models.ForeignKey('users.User', on_delete=models.CASCADE)
    review  = models.ForeignKey(Review, on_delete=models.CASCADE)
    content = models.TextField()

    class Meta:
        db_table = 'comments'