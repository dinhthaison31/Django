from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('', include('ecommerce.urls')),
    path('admin/', admin.site.urls)
]
