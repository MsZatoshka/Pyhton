from django.db import models

# Create your models here.
class author(models.Model):
	name = models.CharField(max_length=255, unique=True)
	class Meta:
		verbose_name = "Автор"
		verbose_name_plural = "Авторы"
		db_table = "book-author"
	def __str__(self):
		return self.name

class series(models.Model):
	name = models.CharField(max_length=255, unique=True)
	class Meta:
		verbose_name = "Серия книги"
		verbose_name_plural = "Серии книг"
		db_table = "book-series"
	def __str__(self):
		return self.name

class publisher(models.Model):
	name = models.CharField(max_length=255 , unique=True)
	class Meta:
		verbose_name = "Издательство книги"
		verbose_name_plural = "Издательства книг"
		db_table = "book-publisher"
	def __str__(self):
		return self.name
class genre(models.Model):
	name = models.CharField(max_length=255, unique=True)
	class Meta:
		verbose_name = "Жанр книги"
		verbose_name_plural = "Жанр книг"
		db_table = "book-genre"
	def __str__(self):
		return self.name

class book(models.Model):
	title = models.CharField("Название",max_length=255)
	price = models.IntegerField("Цена")
	img = models.ImageField("Изображение", upload_to="book/img",blank=True)
	isbn = models.CharField("isbn",unique=True, max_length=50)
	weight = models.IntegerField("Масса",blank=True)
	dimensions = models.CharField("Размеры",max_length=15,blank=True)
	Series = models.ForeignKey(series, verbose_name='Серия книги', null=True, blank=True, on_delete=models.CASCADE)
	Publisher = models.ForeignKey( publisher, verbose_name='Издатель книги', null=True, blank=True, on_delete=models.CASCADE)
	Genre = models.ManyToManyField(genre, verbose_name='Жанр книги');
	Author = models.ManyToManyField(author , related_name="_author" , verbose_name='Автор книги');
	Editor = models.ManyToManyField(author, related_name="_editor", db_table = "book_editor" , verbose_name='Переводчик книги');
	class Meta:
		verbose_name = "Книга"
		verbose_name_plural = "Книги"
		db_table = "book"
	def __str__(self):
		return self.title