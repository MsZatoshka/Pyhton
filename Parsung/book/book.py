import requests
from array import *
from bs4 import BeautifulSoup
import pymysql
from pymysql.cursors import DictCursor
connection = pymysql.connect(
    host='localhost',
    user='root',
    password='',
    db='bd_python',
    charset='utf8mb4',
    cursorclass=DictCursor
)

# import json
url_name = "https://www.labirint.ru"
def parsing():
	r = requests.get(url_name)
	with open('test.html', 'w', encoding='utf-8') as output_file:
		output_file.write(r.text)


def parsing_url(urls, index):
	r = requests.get(url_name+urls)
	with open('book/'+ str(index) +'.html', 'w', encoding='utf-8') as output_file:
		output_file.write(r.text)

def read(src):
	with open(src, 'r', encoding='utf-8') as fp:
		soup = BeautifulSoup(fp, "lxml")
		return soup

def poick():
	with open("test.html", 'r', encoding='utf-8') as fp:
		soup = BeautifulSoup(fp, "lxml")
	
	mydivs = soup.select("div.product.need-watch")
	for index,elem in enumerate(mydivs):
 		priceVal = elem.select("div.price > span")[0].text
 		title = elem.select(".product-title")[0].text
 		img = elem.select(".book-img-cover")[0].get("data-src")
 		a = elem.select(".cover")[0].get("href")
 		priceVal = priceVal[ 0: len(priceVal)-5 ] # Форматирование данных
 		# parsing_url(a, index)
 		# print(img)
 
authors_json = []
genre_json = []
series_json =[]
publisher_json  =[]
def poick_all():
	for index in range(30): #ПОМенять на 30 количество элементов
		soup = read("book/" + str(index) + ".html")
		div = soup.select(".product-description")
		for index,elem in enumerate(div):
			authors_all = elem.select(".authors > a.analytics-click-js")
			if len(authors_all) != 0:
				authors = elem.select(".authors > a.analytics-click-js")[0].text
				authors_json.append(authors) # ДОБАВЛЯЕМ В JSON АВТОР
			if(len(authors_all) > 1):
				Editor = elem.select(".authors > a.analytics-click-js")[1].text
				authors_json.append(Editor)# ДОБАВЛЯЕМ В JSON АВТОР
			
			publisher = elem.select(".publisher > a.analytics-click-js")[0].text
			publisher_json.append(publisher)
			series = elem.select(".series > a.analytics-click-js")[0].text	
			series_json.append(series)		
			isbn = elem.select(".isbn")[0].text
			weight = elem.select(".weight")[0].text
			dimensions = elem.select(".dimensions")[0].text
			genre = elem.select(".genre")
			if len(genre) != 0:
				genre = elem.select(".genre")[0].text
				genre = genre[7 : len(genre)]
				genre_json.append(genre)
			weight = weight[ 6 : len(weight)-1 ]
			isbn = isbn[5 : len(isbn)]
			isbn = isbn.replace("  все, 978-5-9287-2370-5  скрыть", "")
			isbn = isbn.replace("  все, 978-5-9951-2763-5  скрыть", "")
			dimensions = dimensions[8 :len(dimensions)-3] 
			# authors
	series_json1 = set(series_json)
	series_json2 = list(series_json1)
	for elem in series_json2:
		sql = "Insert into series_book(name) values (%s)"
		cursor = connection.cursor()
		cursor.execute(sql, (elem) )
		connection.commit()
poick_all()
# poick()
# parsing()

# СПАРСИНО
# ------ book ------
# title -название книги
# priceVal - цена книги
# img - ссылка на изображение
# a - по ссылки забрать ID
#isbn - уникальный мировой ID
#weight - забрать массу
#dimensions забрать размеры
# ID - autors-переводчик
# ID - autors-автор
# ID - series-серия
# ID - publisher-Издательство
# ------ authors ------
# authors - писатель книги
# ------ series ------
#series - серия книги
# ------ publisher ------
#publisher - Издательство книги
# ------ genre ------
#genre - Жанр книги