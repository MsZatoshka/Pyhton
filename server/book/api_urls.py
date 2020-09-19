
from django.contrib import admin
from django.urls import path, include
from book.views import *

urlpatterns = [
    path('list/', BookList.as_view()),
    path('details/<int:pk>', BookDetails.as_view()),
]
 