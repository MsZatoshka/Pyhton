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

def Poickprice(selector1, selector2,soup):
	result_arr = []
	for index, elem in enumerate(soup):
		result  = elem.select(selector1)
		if len(result) != 0:
			result_arr.append(result[0].text)
		else:
			result2  = elem.select(selector2)
			result_arr.append(result2[0].text)
	return result_arr
def PoickElement(selector ,soup): #Selector - селектор поиска ,soup-где искать
	return soup.select(selector)

def PoickElementAll(selector ,soup):
	result_arr = []
	for index, elem in enumerate(soup):
		result  = elem.select(selector)
		if (len(result) != 0):
			result_arr.append(result[0].text)
	return result_arr


def read(src):
	with open(src, 'r', encoding='utf-8') as fp:
		soup = BeautifulSoup(fp, "lxml")
		return soup



def sqlInsert(bdTable, column, data):
	sql = f"Insert into {bdTable} ({column}) values {data[0], data[1], data[2], data[3], data[4] }"
	print(sql)
	cursor = connection.cursor()
	cursor.execute(sql)
	connection.commit()

# #### #

def isnValid(isbn):
	isbn = isbn[5 : len(isbn)]
	isbn = isbn.replace("все, 978-5-9287-2370-5  скрыть", "")
	isbn = isbn.replace("все, 978-5-9951-2763-5  скрыть", "")
	return isbn;
def  weightValid(weight):	
	return weight[ 6 : len(weight)-1 ]
def  dimensionsValid(dimensions):
	return dimensions[8 :len(dimensions)-3]
# #### #

 


def SetImageBD():
	sqlSelect = "SELECT * FROM `book`"
	cursor = connection.cursor()
	cursor.execute(sqlSelect)
	result = cursor.fetchall()
	print(result)
	# print(result)
	for index,elem in enumerate(result):
		name = "name-img-book" + str(index) + ".png"
		sql = "UPDATE `book` SET `img` = 'book/img/name-img-book" + str(index) +".png' WHERE `book`.`id` =" + str(elem['id'])
		print(sql)
		cursor = connection.cursor()
		cursor.execute(sql)
		connection.commit()

def SetImage(link, index):
	name = "name-img-book" + str(index) + ".png"
 	# print(requests.get(link).content)
	with open('img/' + (name), "wb") as f:
		f.write(requests.get(link).content)




def SQLSELECT(sqlSelect):
	cursor = connection.cursor()
	cursor.execute(sqlSelect)
	result = cursor.fetchall()
	return result
def SQLUpdate(sql):
	cursor = connection.cursor()
	cursor.execute(sql)
	connection.commit()


def SetF( sqlselect, nameCol,ifs, title):
	result = SQLSELECT(f"SELECT * FROM `{sqlselect}`")
	for elem in result:
		# print(ifs)
		if(elem[nameCol] == ifs):
			# print(elem["id"])
			Update = "UPDATE `book` SET `Publisher_id` = " + str(elem['id']) + "  WHERE `book`.`title` = '" + str(title) + "'"
			print(Update)
			SQLUpdate(Update)

def poick_all():
	for index in range(30): 
		soup = read("../book/" + str(index) + ".html")
		div = PoickElement("#product", soup)
		# img = PoickElementAll("#product-image img",div)
		# img = img[0].get("data-src")
		title = PoickElementAll("#product-title > h1", div)
		series = PoickElementAll(".series", div)
		series = series[0][7:len(series[0])]
		publisher = PoickElementAll(".publisher > a", div)
		# print(publisher[0])
		# SetF('book_series', 'name', series, title[0])
		# print(publisher)
		SetF('book_publisher', 'name', publisher[0] ,title[0] )
		# SetImage(img, index)
poick_all()

# SetImageBD()