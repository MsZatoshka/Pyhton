from rest_framework import generics
from book.models import book
from book.serializers import *
from django.shortcuts import render
from django.core.paginator import Paginator
from book.pagination import CustomPagination
from rest_framework.permissions import (IsAdminUser ,)


# Главная API-book
def index(request):
	return render(request, "book/api-index.html")

# АВТОР
class AuthorList(generics.ListAPIView):
	queryset = author.objects.all()
	serializer_class = AuthorListSerializers
class AuthorDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = author.objects.all() 
	serializer_class = AuthorDetailsSerializers
	permission_classes = (IsAdminUser ,)

class AuthorListBooks(generics.ListAPIView):
	serializer_class = BookListSerializers
	queryset = book.objects.all() 
	# def get_queryset(self, *args, **kwargs):
		# pass
# query_list = author.objects.filter(name=author_name)# Издатель

class PublisherList(generics.ListAPIView):
	queryset = publisher.objects.all()
	serializer_class = AuthorListSerializers
class PublisherDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = publisher.objects.all() 
	serializer_class = AuthorDetailsSerializers
	permission_classes = (IsAdminUser ,)

# Серия
class SeriesList(generics.ListAPIView):
	queryset = series.objects.all()
	serializer_class = SeriesListSerializers
class SeriesDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = series.objects.all() 
	serializer_class = SeriesDetailsSerializers
	permission_classes = (IsAdminUser ,)

# Жанр
class GenreList(generics.ListAPIView):
	queryset = genre.objects.all()
	serializer_class = GenreListSerializers
class GenreDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = genre.objects.all() 
	serializer_class = GenreDetailsSerializers
	permission_classes = (IsAdminUser ,)

# КНИГА
class BookList(generics.ListAPIView):
	queryset = book.objects.all()
	serializer_class = BookListSerializers
	pagination_class = CustomPagination
	# permission_classes = (IsAdminUser ,)

class BookDetails(generics.RetrieveAPIView):
	queryset = book.objects.all() 
	serializer_class = BookDetailsSerializers

class BookListCread(generics.RetrieveUpdateDestroyAPIView):
	queryset = book.objects.all()
	serializer_class = BookDetailsCreadSerializers
	permission_classes = (IsAdminUser ,)
