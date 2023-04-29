from django.shortcuts import render
from django.http import HttpResponse


# def index(request):
#     return HttpResponse("e-Commerce web")

def store(request):
    context = {}
    return render(request, 'store.html', context)
