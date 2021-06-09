"""
Django settings for YourMusic project.

Generated by 'django-admin startproject' using Django 3.1.7.

For more information on this file, see
https://docs.djangoproject.com/en/3.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.1/ref/settings/
"""

from pathlib import Path
import os

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'e8x)y7zv3p3y0auhzoa!p*(!%u_$21t=$3ou#!r0@_vrp+-4@)'

# SECURITY WARNING: don't run with debug turned on in production!
''' https://yourmusic.com:8000/ '''
ALLOWED_HOSTS = [
    'yourmusic.com', 'localhost', '127.0.0.1'
]


# Application definition

INSTALLED_APPS = [
    'grupos',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sitemaps',
    'accounts',
    'ojeador',
    'foro',
    'noticias',
    'chat',
    'rest_framework',
    'rest_framework.authtoken',
    'bootstrapform',
    'django_extensions',
    'social_django',

]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'YourMusic.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'django.template.context_processors.media',

            ],
        },
    },
]

WSGI_APPLICATION = 'YourMusic.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases


# DATOS PARA CONECTAR CON LA DB

# MANUEL
""" DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'yourmusic',
        'USER': 'root',
        'PASSWORD': '123456',
        'HOST': 'localhost',
        'PORT': '3306',
    }

}   """
# MARIO
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'yourmusic',
        'USER': 'root',
        'PASSWORD': '',
        'HOST': 'localhost',
        'PORT': '3306',
    }

}


# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

AUTHENTICATION_BACKENDS = ['django.contrib.auth.backends.ModelBackend',
                            'accounts.authentication.AuthByEmailBackend',
                           'social_core.backends.google.GoogleOAuth2',
                           'social_core.backends.facebook.FacebookOAuth2',
                           ]
""" https://yourmusic.com:8000/social-auth/complete/google-oauth2/ """
SOCIAL_AUTH_GOOGLE_OAUTH2_KEY = '1053664879539-tjpuspsgup09kat3e583oi3la4bq6ti2.apps.googleusercontent.com'
SOCIAL_AUTH_GOOGLE_OAUTH2_SECRET = 'G9GIPjuIZt8bLiIhkWr9LGku'
""" https://yourmusic.com:8000/social-auth/complete/google-oauth2/ """
SOCIAL_AUTH_FACEBOOK_KEY = '924871281636213'
SOCIAL_AUTH_FACEBOOK_SECRET = '60deb3d0929dacbc16b2932d39e2a27a'
SOCIAL_AUTH_FACEBOOK_SCOPE = ['email']
# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

DEBUG = True

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

STATIC_URL = '/static/'

MEDIA_ROOT = os.path.join(os.path.dirname(
    os.path.dirname(__file__)), 'static', 'media')
MEDIA_URL = '/media/'
LOGOUT_REDIRECT_URL = "/accounts/login/"

STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static')
]

# Para enviar correo de cambio de contraseña
""" EMAIL_HOST = 'smtp.mailtrap.io'
EMAIL_HOST_USER = 'e8830734a9d022'
EMAIL_HOST_PASSWORD = 'f2a849878b7d2e'
EMAIL_PORT = '2525' """

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.googlemail.com'
EMAIL_PORT = '587'
""" TODO_ANOTACIÓN: Todos los datos como correo, 
    contraseñas etc... tanto para la BD como para enviar 
    correos debemos meterlos en variables de entorno antes 
    de subirlo al servidor  """
EMAIL_HOST_USER = 'yrmusicteam@gmail.com'
EMAIL_HOST_PASSWORD = 'usuarioyourmusic'
EMAIL_USE_TLS = True
