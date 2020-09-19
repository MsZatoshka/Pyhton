import requests
from array import *
from bs4 import BeautifulSoup
import pymysql
from pymysql.cursors import DictCursor
connection = pymysql.connect(
    host='',
    user='',
    password='',
    db='',
    charset='',
    cursorclass=DictCursor
)

#  Принимает Selector - что искать soup где искать
# Возвращает результат поиска
def PoickElementAll(selector ,soup):
	result_arr = []
	for index, elem in enumerate(soup):
		result  = elem.select(selector)
		if (len(result) != 0):
			result_arr.append(result[0])
	return result_arr

# Принимает Selector - селектор поиска ,soup-где искать
# Возвращает результат поиска
def PoickElement(selector ,soup):  
	return soup.select(selector)