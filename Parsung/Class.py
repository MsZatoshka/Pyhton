import requests
from array import *
from bs4 import BeautifulSoup
import pymysql
from pymysql.cursors import DictCursor


#  ПРинимает Selector - что искать soup где искать
def PoickElementAll(selector ,soup):
	result_arr = []
	for index, elem in enumerate(soup):
		result  = elem.select(selector)
		if (len(result) != 0):
			result_arr.append(result[0].text)
	return result_arr

def PoickElement(selector ,soup): #Selector - селектор поиска ,soup-где искать
	return soup.select(selector)