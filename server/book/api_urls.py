
from django.contrib import admin
from django.urls import path, include
from book.views import *
from . import views

urlpatterns = [
	path('', views.index,),
	path('list/', BookList.as_view()),
	path('<int:pk>', BookDetails.as_view()),

	path('author/list/', AuthorList.as_view()),
    path('author/<int:pk>', AuthorDetails.as_view()),

    path('publisher/list/', PublisherList.as_view()),
    path('publisher/<int:pk>', PublisherDetails.as_view()),

    path('series/list/', SeriesList.as_view()),
    path('series/<int:pk>', SeriesDetails.as_view()),

    path('genre/list/', GenreList.as_view()),
    path('genre/<int:pk>', GenreDetails.as_view()),
]