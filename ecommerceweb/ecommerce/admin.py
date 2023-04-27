from django.contrib import admin
from .models import Product, Store, Order


class StoreAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "created_date", "active"]
    search_fields = ["name"]


class ProductAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "price", "created_date"]


admin.site.register(Product, ProductAdmin)
admin.site.register(Store, StoreAdmin)
admin.site.register(Order)
