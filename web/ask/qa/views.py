from django.shortcuts import render

from django.http import HttpResponse 

def test(request, *args, **kwargs):
	print('views')
	return HttpResponse('OK')
