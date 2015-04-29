from django.shortcuts import render
from meetups.models import Meetup
# Create your views here.
def dashboard(request):
    context = {
        'ORGANIZACAO': request.user.organization,
        'meetups': Meetup.objects.filter(organization=request.user.organization).prefetch_related('talk_set')
    }

    return render(request,'talk_dashboard.html', context)