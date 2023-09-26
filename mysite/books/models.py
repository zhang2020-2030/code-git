from django.db import models

# Create your models here.
class Books(models.Model):
    id = models.AutoField(primary_key=True)
    activity = models.CharField(max_length=128)
    type = models.CharField(max_length=32)
    time = models.CharField(max_length=32)
    city = models.CharField(max_length=32)
    addr = models.CharField(max_length=128)
    p_number = models.CharField(max_length=128)
    def __str__(self):
        return "id:%d\nactivity:%s\ntype:%s\ntime:%s\ncity:%s\naddr:%s\np_number:%s\n" % \
               (self.id, self.activity, self.type, self.time, self.city, self.addr, self.p_number)

