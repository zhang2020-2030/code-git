from django.shortcuts import render, HttpResponse
from django.http import  Http404, HttpResponseRedirect
from books.models import *
import pandas as pd
from pandas import Series, DataFrame

# Create your views here.
def index(request):
    return render(request, 'index.html')

def login(request):
    username = request.POST["username"]
    password = request.POST["password"]
    print(username, password)
    res = dict()
    res["success"] = True
    u = Books.objects.all()
    uValues = u.values()
    uValues = list(uValues)
    df = DataFrame(uValues)
    resJson = df.to_dict('records')
    res["data"] = resJson
    if u:
         return HttpResponse(json.dumps(res))
    else:
         raise Http404()

import json
def ajax_test(request):
    Books.objects.all()
    a = dict()
    a["ok"] = True
    a["msg"] = "save success!"
    return HttpResponse(json.dumps(a))