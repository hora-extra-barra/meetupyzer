from django.shortcuts import render
from announcers.models import Announcer
# Create your views here.
def dashboard(request):
    context = {
        'ORGANIZACAO': request.user.organization,
        'announcers': Announcer.objects.all()
    }

    return render(request,'ann_dashboard.html', context)