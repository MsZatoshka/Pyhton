from rest_framework import serializers
from book.models import *

# АВТОр
class AuthorListSerializers(serializers.ModelSerializer):
	class Meta:
		model = author
		fields = '__all__'
class AuthorDetailsSerializers(serializers.ModelSerializer):
	class Meta:
		model = author
		fields = '__all__'
# Издатель
class PublisherListSerializers(serializers.ModelSerializer):
	class Meta:
		model = publisher
		fields = '__all__'
class PublisherDetailsSerializers(serializers.ModelSerializer):
	class Meta:
		model = publisher
		fields = '__all__'
# Серия
class SeriesListSerializers(serializers.ModelSerializer):
	class Meta:
		model = series
		fields = '__all__'
class SeriesDetailsSerializers(serializers.ModelSerializer):
	class Meta:
		model = series
		fields = '__all__'
# Жанр genre
class GenreListSerializers(serializers.ModelSerializer):
	class Meta:
		model = genre
		fields = '__all__'
class GenreDetailsSerializers(serializers.ModelSerializer):
	class Meta:
		model = genre
		fields = '__all__'
# КНИГА
class BookListSerializers(serializers.ModelSerializer):
	class Meta:
		model = book
		fields = ('id', 'title', 'img' , 'price')
class BookDetailsSerializers(serializers.ModelSerializer):
	Author =  AuthorDetailsSerializers(many=True, read_only=True)
	Editor =  AuthorDetailsSerializers(many=True, read_only=True)
	Genre =  GenreDetailsSerializers(many=True, read_only=True)
	Series = SeriesDetailsSerializers()
	Publisher = PublisherDetailsSerializers()
	class Meta:
		model = book
		fields = '__all__'
class BookDetailsCreadSerializers(serializers.ModelSerializer):
	class Meta:
		model = book
		fields = '__all__'