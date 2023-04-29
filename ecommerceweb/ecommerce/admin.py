from django.contrib import admin
from django.utils.html import mark_safe
from .models import Product, Store, Order


class StoreAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "created_date", "active"]
    search_fields = ["name"]
    list_filter = ["name"]


class ProductAdmin(admin.ModelAdmin):
    class Media:
        css = {
            'all': ('/static/css/main.css', )
        }
    list_display = ["id", "name", "price", "store", "created_date", "updated_date"]
    search_fields = ["name", "price", "store"]
    readonly_fields = ["product"]

    def product(self, product):
        return mark_safe("<img src='/static/{img_url}' alt='{alt}' width='120px' />".format(img_url=product.image.name, alt=product.name))


admin.site.register(Product, ProductAdmin)
admin.site.register(Store, StoreAdmin)
admin.site.register(Order)
