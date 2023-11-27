from django.db import models

# Create your models here.
class Activity(models.Model):
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


class ActivityCity(models.Model):
    city = models.CharField(max_length=32)
    type = models.CharField(max_length=32)
    session = models.CharField(max_length=64)
    def __str__(self):
        return "city:%s\ntype:%s\nsession:%s\n" % \
               (self.city,self.type,self.session)

class ActivityAll(models.Model):
    type = models.CharField(max_length=32)
    session = models.CharField(max_length=64)
    def __str__(self):
        return "type:%s\nsession:%s\n" % \
               (self.type,self.session)

class ActivityType(models.Model):
    type = models.CharField(max_length=32)
    city = models.CharField(max_length=32)
    session = models.CharField(max_length=64)
    def __str__(self):
        return "type:%s\ncity:%s\nsession:%s\n" % \
               (self.type,self.city,self.session)

class AccessQuantityAll(models.Model):
    day = models.CharField(max_length=16)
    norm = models.CharField(max_length=128)
    predict = models.CharField(max_length=128)
    def __str__(self):
        return "norm:%s\npredict:%s\n" % \
               (self.norm,self.predict)

class AccessQuantityCity(models.Model):
    day = models.CharField(max_length=16)
    city = models.CharField(max_length=32)
    norm = models.CharField(max_length=128)
    predict = models.CharField(max_length=128)
    def __str__(self):
        return "city:%s\nnorm:%s\npredict:%s\n" % \
            (self.city,self.norm, self.predict)

class AlertMessageAll(models.Model):
    norm_num = models.CharField(max_length=32)
    alert_num = models.CharField(max_length=32)
    exception_num = models.CharField(max_length=32)
    def __str__(self):
        return "norm_num:%s\nalert_num:%s\nexception_num:%s\n" % \
            (self.norm_num, self.alert_num,self.exception_num)



