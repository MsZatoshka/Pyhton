from rest_framework import serializers
from book.models import book

class BookListSerializers(serializers.ModelSerializer):
	class Meta:
		model = book
		fields = ('id', 'title', 'img' , 'price')
class BookDetailsSerializers(serializers.ModelSerializer):
	class Meta:
		model = book
		fields = '__all__'