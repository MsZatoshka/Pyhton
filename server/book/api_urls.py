from django.urls import path, include, re_path
from book.views import *
from . import views

urlpatterns = [
	path('', views.index,),
	path('list/', BookList.as_view()),
    path('<int:pk>', BookDetails.as_view()),
	path('cread/<int:pk>', BookListCread.as_view()),

	path('author/list/', AuthorList.as_view()),
    path('author/<int:pk>', AuthorDetails.as_view()),
    

    re_path(r'filter/author/(?P<id>.+)/', AuthorListBooks.as_view()),
    re_path(r'filter/genre/(?P<id>.+)/', GenreListBooks.as_view()),

    path('publisher/list/', PublisherList.as_view()),
    path('publisher/<int:pk>', PublisherDetails.as_view()),

    path('series/list/', SeriesList.as_view()),
    path('series/<int:pk>', SeriesDetails.as_view()),

    path('genre/list/', GenreList.as_view()),
    path('genre/<int:pk>', GenreDetails.as_view()),
]