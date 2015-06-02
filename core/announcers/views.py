from django.shortcuts import render,redirect
from announcers.models import Announcer


# Create your views here.
def dashboard(request):
    context = {
        'ORGANIZACAO': request.user.organization,
        'announcers': Announcer.objects.all(),
    }

    return render(request,'ann_dashboard.html', context)

def ann_form(request,id=None):
    if id:
        context = {
            'announcer' : Announcer.objects.get(id=id)    
        }

        return render(request,'ann_form.html', context)
    else:
        return render(request,'ann_form.html')

def ann_remove(request, id):
    ann = Announcer.objects.get(id=id)
    ann.delete()
    context = {
        'ORGANIZACAO': request.user.organization,
        'announcers': Announcer.objects.all(),
    }

    return redirect('/palestrantes', context)

def ann_add(request):
    print request.POST
    return render(request,'ann_form.html')