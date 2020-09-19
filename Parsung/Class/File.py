import requests
from array import *
from bs4 import BeautifulSoup


# Принимает src Путь файла
# Открывает файл и читает для добавление возможности парсинга
def ReadFile(src): #
	with open(src, 'r', encoding='utf-8') as fp:
		soup = BeautifulSoup(fp, "lxml")
		return soup
 
# Сохраняет файл с интернет ссылки
#Принимает link - Ссылка на изображение ;
# ulr - куда сохранить файл; name - названия файла
def SetImage(link,url,name):
	with open(url + name, "wb") as f:
		f.write(requests.get(link).content)	

# Сохраняет файл с интернет ссылки
#Принимает link - Ссылка на страницу ;
# ulr - куда сохранить файл; name - названия файла
def Parsing(link, url, name):
	r = requests.get(link)
	with open(url + name, 'w', encoding='utf-8') as output_file:
		output_file.write(r.text)