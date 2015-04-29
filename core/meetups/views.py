from django.shortcuts import render
from meetups.models import Meetup
# Create your views here.
def dashboard(request):
    
    meetups = Meetup.objects.filter(organization__id=request.user.organization.id)
    
    context = {
        'organizacao': request.user.organization.name,
        'meetups': meetups,
    }

    return render(request,'meet_dashboard.html', context)