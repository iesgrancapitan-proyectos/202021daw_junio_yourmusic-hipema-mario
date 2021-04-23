import os
from django.conf import settings
from django.shortcuts import redirect, render, reverse
from django.contrib.auth.decorators import login_required
#from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login as make_login
from .forms import CustomUserCreationForm, UserProfileForm
from .models import UserProfileMusicos,UserProfileOjeadores
from django.core.exceptions import ObjectDoesNotExist



def user_data(request):
    print(request.user.username)
    return render(request, 'user_data.html')


@login_required
def profile(request):

    form = UserProfileForm()
    if request.method == 'POST':
        pathOldAvatar = None
        # Actualizar imagen
        try:
            userprofile = UserProfileMusicos.objects.get(user=request.user)
            form = UserProfileForm(
                request.POST, request.FILES, instance=userprofile)

            # Obtenemos la ruta de la imagen anterior
            pathOldAvatar = os.path.join(
                settings.MEDIA_ROOT, userprofile.avatar.name)
        except ObjectDoesNotExist:
            form = UserProfileForm(request.POST, request.FILES)

        if form.is_valid():
            # Se comprueba si la ruta no está vacía y se borra la imagen anterior
            if pathOldAvatar is not None and os.path.isfile(pathOldAvatar):
                os.remove(pathOldAvatar)

            userprofile = form.save(commit=False)
            userprofile.user = request.user
            userprofile.save()
    return render(request, 'profile.html', {'form': form})


def register(request):
    form = CustomUserCreationForm()

    if request.method == 'POST':
        form = CustomUserCreationForm(data=request.POST)

        if form.is_valid():
            user = form.save()
            if user is not None:
                make_login(request, user)
                return redirect(reverse('account:profile'))
    return render(request, 'register.html', {'form': form})
