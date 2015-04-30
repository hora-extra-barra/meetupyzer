from django.shortcuts import render
from organizations.models import Organization
# Create your views here.
def dashboard(request):
    context = {
        'ORGANIZACAO': request.user.organization,
    }

    return render(request,'org_dashboard.html', context)