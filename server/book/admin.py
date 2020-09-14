from django.contrib import admin
from .models import author, series,publisher,genre, book

admin.site.register(author)
admin.site.register(series)
admin.site.register(publisher)
admin.site.register(genre)
admin.site.register(book)
# Register your models here.
