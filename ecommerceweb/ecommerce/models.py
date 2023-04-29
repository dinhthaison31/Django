from django.db import models
from django.contrib.auth.models import AbstractUser
from ckeditor.fields import RichTextField


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class User(AbstractUser):
    avatar = models.ImageField(upload_to='users/%Y/%m', null=True)
    

class Store(BaseModel):
    name = models.CharField(max_length=255)
    description = RichTextField()
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    logo = models.ImageField(upload_to='stores_logo/%Y/%m', blank=True, null=True)

    def __str__(self):
        return self.name


class Product(BaseModel):
    name = models.CharField(max_length=255)
    image = models.ImageField(upload_to='products/%Y/%m', null=True)
    description = RichTextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    store = models.ForeignKey(Store, on_delete=models.CASCADE, related_name='products')

    def __str__(self):
        return self.name


class Review(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='reviews')
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    rating = models.PositiveIntegerField(choices=((1, '1'), (2, '2'), (3, '3'), (4, '4'), (5, '5')))
    comment = models.TextField(blank=True)

    def __str__(self):
        return f"{self.user.name} - {self.product.name}"


class Order(BaseModel):
    PAYMENT_CHOICES = (
        ('COD', 'Cash on delivery'),
        ('PAYPAL', 'PayPal'),
        ('STRIPE', 'Stripe'),
        ('ZALOPAY', 'Zalo Pay'),
        ('MOMO', 'Momo'),
    )
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='orders')
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    payment_method = models.CharField(max_length=20, choices=PAYMENT_CHOICES)
    total_price = models.DecimalField(max_digits=10, decimal_places=2)
    date_ordered = models.DateTimeField(auto_now_add=True)
    is_confirmed = models.BooleanField(default=False)


class Comparison(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    store = models.ForeignKey(Store, on_delete=models.CASCADE)
    rating = models.PositiveIntegerField()
    price = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f"{self.product.name} - {self.store.name}"
