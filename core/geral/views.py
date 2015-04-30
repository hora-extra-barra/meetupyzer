# -*- encoding: utf-8 -*-
from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import redirect


def home(request):    
    if request.user.is_authenticated():
        context = {
            'USER': request.user.name
        }
        return render(request, "dashboard.html", context)
    else:
        return render(request,"login.html")


def auth_login(request):
    if request.user.is_authenticated():
        context = {
            'USER': request.user.name
        }
        return render(request, "base.html", context)
    else:
        username = request.POST['email']
        password = request.POST['password']
        user = authenticate(email=username, password=password)
        if user is not None:
        # the password verified for the user
            if user.is_active:
                context = {
                    'USER': user.name
                }
                login(request, user)
                return render(request, "base.html", context)
            else:
                #print("The password is valid, but the account has been disabled!")
                context = {}
                return render(request,"login.html", context)
        else:
            # the authentication system was unable to verify the username and password
            #print("The username and password were incorrect.")
            context = {}
            return render(request,"login.html", context)

def auth_logout(request):
    logout(request)
    return redirect("/")

