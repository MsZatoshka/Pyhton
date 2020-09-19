from rest_framework import generics
from book.models import book
from book.serializers import *

class BookList(generics.ListAPIView):
	queryset = book.objects.all()
	serializer_class = BookListSerializers

class BookDetails(generics.RetrieveUpdateDestroyAPIView):
	queryset = book.objects.all()
	serializer_class = BookDetailsSerializers