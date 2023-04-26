from django.shortcuts import render
from django.http import HttpResponse


# def index(request):
#     return HttpResponse("e-Commerce web")

def index(request):
    return render(request, template_name='index.html', context={
        'name': 'Tu Nhi'
    })
