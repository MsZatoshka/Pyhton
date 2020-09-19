from rest_framework import generics
from book.models import book
from book.serializers import *
from django.shortcuts import render


# Главная API-book
def index(request):
	return render(request, "book/api-index.html")

# КНИГА
class BookList(generics.ListAPIView):
	queryset = book.objects.all()
	serializer_class = BookListSerializers
class BookDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = book.objects.all() 
	serializer_class = BookDetailsSerializers
# АВТОР
class AuthorList(generics.ListAPIView):
	queryset = author.objects.all()
	serializer_class = AuthorListSerializers
class AuthorDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = author.objects.all() 
	serializer_class = AuthorDetailsSerializers
# Издатель
class PublisherList(generics.ListAPIView):
	queryset = publisher.objects.all()
	serializer_class = AuthorListSerializers
class PublisherDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = publisher.objects.all() 
	serializer_class = AuthorDetailsSerializers

# Серия
class SeriesList(generics.ListAPIView):
	queryset = series.objects.all()
	serializer_class = SeriesListSerializers
class SeriesDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = series.objects.all() 
	serializer_class = SeriesDetailsSerializers

# Жанр
class GenreList(generics.ListAPIView):
	queryset = genre.objects.all()
	serializer_class = GenreListSerializers
class GenreDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = genre.objects.all() 
	serializer_class = GenreDetailsSerializers