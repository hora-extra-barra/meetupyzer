# -*- encoding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import AbstractBaseUser,UserManager,BaseUserManager


class MeetUserManager(BaseUserManager):
    def create_user(self, email, name, password=None):
        """
        Creates and saves a User with the given email, date of
        birth and password.
        """
        if not email:
            raise ValueError('Users must have an email address')

        user = self.model(
            email=self.normalize_email(email),
            name=name,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, name, password):
        """
        Creates and saves a superuser with the given email, date of
        birth and password.
        """
        user = self.create_user(email,
            password=password,
            name=name
        )
        user.is_admin = True
        user.save(using=self._db)
        return user

# Create your models here.
class User(AbstractBaseUser):
    name = models.CharField(u"nome",max_length=255, blank=False, null=False)
    email = models.EmailField(u"email",max_length=255, unique=True)
    is_active = models.BooleanField(default=True)
    is_admin = models.BooleanField(default=False)

    organization = models.ForeignKey('organizations.Organization', blank=True, null=True)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name']

    objects = MeetUserManager()

    class Meta:
        verbose_name = u'Usuário'
        verbose_name_plural = u'Usuários'

    def __unicode__(self):
        return self.name

    def get_full_name(self):
        # The user is identified by their email address
        return self.email

    def get_short_name(self):
        # The user is identified by their email address
        return self.email

    def __str__(self):              # __unicode__ on Python 2
        return self.email

    def has_perm(self, perm, obj=None):
        "Does the user have a specific permission?"
        # Simplest possible answer: Yes, always
        return True

    def has_module_perms(self, app_label):
        "Does the user have permissions to view the app `app_label`?"
        # Simplest possible answer: Yes, always
        return True

    @property
    def is_staff(self):
        "Is the user a member of staff?"
        # Simplest possible answer: All admins are staff
        return self.is_admin