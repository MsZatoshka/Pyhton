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
			result_arr.append(result[0])
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
	name = "name-img-book" + str(index) + ".png"
	

def SetImage(link, index):
	name = "name-img-book" + str(index) + ".png"
 	# print(requests.get(link).content)
	with open('img/' + (name), "wb") as f:
		f.write(requests.get(link).content)

def poick_all():
	for index in range(30): 
		soup = read("../book/" + str(index) + ".html")
		div = PoickElement("#product", soup)
		img = PoickElementAll("#product-image img",div)
		img = img[0].get("data-src")
		# SetImage(img, index)
		# SetImageBD()
poick_all()

