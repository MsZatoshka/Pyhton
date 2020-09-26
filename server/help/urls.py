from django.urls import path, include
from help.views import *
from . import views

urlpatterns = [
	path('', views.index,)
]