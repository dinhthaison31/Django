from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    avatar = models.ImageField(upload_to='users/%Y/%m', null=True)


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class Store(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(blank=True)
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    logo = models.ImageField(upload_to='shop_logo', blank=True, null=True)
    is_approved = models.BooleanField(default=False)


class Product(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(blank=True)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    store = models.ForeignKey(Store, on_delete=models.PROTECT)


class Review(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    content = models.TextField()
    rating = models.IntegerField(choices=[(i, i) for i in range(1, 6)])
    timestamp = models.DateTimeField(auto_now_add=True)


# class ActionBase(BaseModel):
#     lesson = models.ForeignKey(Product, on_delete=models.CASCADE)
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#
#     class Meta:
#         unique_together = ('product', 'user')
#         abstract = True
#
#
# class Like(ActionBase):
#     liked = models.BooleanField(default=True)
#
#
# class Rating(ActionBase):
#     rate = models.SmallIntegerField(default=0)


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    payment_method = models.CharField(max_length=255)
    total_price = models.DecimalField(max_digits=10, decimal_places=2)
    timestamp = models.DateTimeField(auto_now_add=True)


class Category(models.Model):
    name = models.CharField(max_length=255)
    description = models.TextField(blank=True)


class ProductCategory(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)


class Transaction(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    payment_method = models.CharField(max_length=255)
    total_price = models.DecimalField(max_digits=10, decimal_places=2)
    timestamp = models.DateTimeField(auto_now_add=True)
    is_confirmed = models.BooleanField(default=False)


# class UserRole(models.Model):
#     ROLE_CHOICES = (
#         ('admin', 'Admin'),
#         ('salesperson', 'Salesperson'),
#         ('seller', 'Seller'),
#         ('customer', 'Customer'),
#     )
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#     role = models.CharField(max_length=255, choices=ROLE_CHOICES)


# class Shop(models.Model):
#     owner = models.ForeignKey(User, on_delete=models.CASCADE)
#     name = models.CharField(max_length=255)
#     description = models.TextField(blank=True)
#     logo = models.ImageField(upload_to='shop_logo', blank=True, null=True)
#     is_approved = models.BooleanField(default=False)


# class Review(models.Model):
#     RATING_CHOICES = (
#         (1, '1'),
#         (2, '2'),
#         (3, '3'),
#         (4, '4'),
#         (5, '5'),
#     )
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#     product = models.ForeignKey(Product, on_delete=models.CASCADE)
#     store = models.ForeignKey(Store, on_delete=models.CASCADE, blank=True, null=True)
#     rating = models.IntegerField(choices=RATING_CHOICES)
#     comment = models.TextField(blank=True)
#     timestamp = models.DateTimeField(auto_now_add=True)


class Comment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    review = models.ForeignKey(Review, on_delete=models.CASCADE)
    content = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)


class Comparison(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    store = models.ForeignKey(Store, on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    timestamp = models.DateTimeField(auto_now_add=True)
