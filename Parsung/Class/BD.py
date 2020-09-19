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

# Принимает запрос в бд на изменения данных
def SqlData(sql):
	cursor = connection.cursor()
	cursor.execute(sql)
	connection.commit()

# ПРинимает SQL Select запрос для чтение с бд
# ВОзвращает ответ от БД первая запись
def SqlSelect(sqlSelect):
	cursor = connection.cursor()
	cursor.execute(sqlSelect)
	result = cursor.fetch()
	return result

# ПРинимает SQL Select запрос для чтение с бд
# ВОзвращает ответ от БД в виде массива
def SqlSelectAll(sqlSelect):
	cursor = connection.cursor()
	cursor.execute(sqlSelect)
	result = cursor.fetchall()
	return result



# РАБОЧИЕ SQL ЗАПРОСЫ 
# sql = "UPDATE `book` SET `img` = 'book/img/name-img-book" + str(index) +".png' WHERE `book`.`id` =" + str(elem['id'])
