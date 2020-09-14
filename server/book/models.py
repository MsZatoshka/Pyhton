from django.db import models

# Create your models here.
class author(models.Model):
	name = models.CharField(max_length=255, unique=True)
	class Meta:
		verbose_name = "Автор"
		verbose_name_plural = "Авторы"
		db_table = "author_book"
	def __str__(self):
		return self.name

class series(models.Model):
	name = models.CharField(max_length=255, unique=True)
	class Meta:
		verbose_name = "Серия книги"
		verbose_name_plural = "Серии книг"
		db_table = "series_book"
	def __str__(self):
		return self.name

class publisher(models.Model):
	name = models.CharField(max_length=255 , unique=True)
	class Meta:
		verbose_name = "Издательство книги"
		verbose_name_plural = "Издательства книг"
		db_table = "publisher_book"
	def __str__(self):
		return self.name
class genre(models.Model):
	name = models.CharField(max_length=255, unique=True)
	class Meta:
		verbose_name = "Жанр книги"
		verbose_name_plural = "Жанр книг"
		db_table = "genre_book"
	def __str__(self):
		return self.name

class book(models.Model):
	title = models.CharField(max_length=255)
	price = models.IntegerField()
	img = models.ImageField(upload_to="book/img",blank=True)
	isbn = models.CharField(unique=True, max_length=50)
	weight = models.IntegerField(blank=True)
	dimensions = models.CharField(max_length=15,blank=True)
	class Meta:
		verbose_name = "Книга"
		verbose_name_plural = "Книги"
		db_table = "book"
	def __str__(self):
		return self.title