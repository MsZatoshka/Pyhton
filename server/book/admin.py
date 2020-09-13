from django.contrib import admin
from .models import author
from .models import series
from .models import publisher
from .models import genre

admin.site.register(author)
admin.site.register(series)
admin.site.register(publisher)
admin.site.register(genre)
# Register your models here.
