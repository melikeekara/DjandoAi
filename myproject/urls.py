from django.contrib import admin
from django.urls import path
from pages import views  # 'pages' klasörü altındaki views'i ekliyoruz

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),  # Anasayfayı bu view'e yönlendiriyoruz
]
