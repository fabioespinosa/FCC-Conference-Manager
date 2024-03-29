"""
Django settings for urop project.

Generated by 'django-admin startproject' using Django 1.9.2.

For more information on this file, see
https://docs.djangoproject.com/en/1.9/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/1.9/ref/settings/
"""

import os

from decouple import config

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# AWS_ACCESS_KEY_ID = config('AWS_ACCESS_KEY_ID')
# AWS_SECRET_ACCESS_KEY = config('AWS_SECRET_ACCESS_KEY')


AWS_STORAGE_BUCKET_NAME = 'CONFERENCE'
# AWS_S3_CUSTOM_DOMAIN = '%s.s3.cern.ch' % AWS_STORAGE_BUCKET_NAME

# OPENSTACK BUCKET (S3):
AWS_S3_HOST = "s3.cern.ch"
AWS_S3_ENDPOINT_URL = "https://s3.cern.ch"
# S3_USE_SIGV4 = True
AWS_S3_REGION_NAME = 'cern'

DEFAULT_FILE_STORAGE = 'urop.storage_backends.MediaStorage'


print(os.environ.get('DJANGO_DEBUG'))
print(os.environ.get('DJANGO_DATABASE_HOST'))
# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/1.9/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '=*5i*1@^@xjhr5m9mm79vgi0+d7=gt_&td0db)!(a)vi$+=5as'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = config('DJANGO_DEBUG', default=True, cast=bool)

ALLOWED_HOSTS = [
    config('DJANGO_ALLOWED_HOSTS', default='localhost'),
    '*',
    '0.0.0.0'
]


# Application definition

INSTALLED_APPS = [
    'database.apps.DatabaseConfig',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django.contrib.sites',
    'haystack',
    'bootstrap4',
    'allauth',
    'allauth.account',
    'allauth.socialaccount',
    'allauth.socialaccount.providers.cern',
    'widget_tweaks',
    'django_filters',
    'debug_toolbar'

]

MIDDLEWARE = [
    'debug_toolbar.middleware.DebugToolbarMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'urop.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
                'database.context_processors.user_messages'
            ],
        },
    },
]

AUTH_USER_MODEL = 'database.UserProfile'

AUTHENTICATION_BACKENDS = (
    'django.contrib.auth.backends.ModelBackend',
    'allauth.account.auth_backends.AuthenticationBackend',
)

WSGI_APPLICATION = 'urop.wsgi.application'



# Database
# https://docs.djangoproject.com/en/1.9/ref/settings/#databases

DATABASES = {
    # 'default': {
    #     'ENGINE': 'django.db.backends.sqlite3',
    #     'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    # }
    'default': {
        'ENGINE': config('DJANGO_DATABASE_ENGINE', default='django.db.backends.postgresql'),
        'NAME': config('DJANGO_DATABASE_NAME', default='fcc-ee-conference'),
        'USER': config('DJANGO_DATABASE_USER', default='admin'),
        'PASSWORD': config('DJANGO_DATABASE_PASSWORD', default='changeme'),
        'HOST': config('DJANGO_DATABASE_HOST', default='localhost'),
        'PORT': config('DJANGO_DATABASE_PORT', default='5433'),
    }
}


# Password validation
# https://docs.djangoproject.com/en/1.9/ref/settings/#auth-password-validators

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

# Haystack setup
HAYSTACK_CONNECTIONS = {
    'default': {
        'ENGINE': 'haystack.backends.elasticsearch_backend.ElasticsearchSearchEngine',
        'URL': 'http://127.0.0.1:9200/',
        'INDEX_NAME': 'haystack',
        'TIMEOUT': 60,
    },
}

# HAYSTACK_DEFAULT_OPERATOR = 'OR'

# Internationalization
# https://docs.djangoproject.com/en/1.9/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Redirecting from the default account/profile after login
LOGIN_REDIRECT_URL = '/'

# Needed for django-allauth
SITE_ID = 1
ACCOUNT_EMAIL_REQUIRED = 'false'
ACCOUNT_EMAIL_VERIFICATION = 'none'

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.9/howto/static-files/

ADMINS = [('Fabio Espinosa', 'f.e@cern.ch')]

STATIC_URL = '/static/'
STATICFILES_DIRS = (os.path.join(BASE_DIR, 'static'),)
STATIC_ROOT = os.path.join(BASE_DIR, '/wsgi/static')

INTERNAL_IPS = [
    # ...
    '127.0.0.1',
    # ...
]
