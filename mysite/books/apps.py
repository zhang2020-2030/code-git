from django.apps import AppConfig

from apscheduler.schedulers.background import BackgroundScheduler
import subprocess
from datetime import datetime

# class BooksConfig(AppConfig):
#     default_auto_field = 'django.db.models.BigAutoField'
#     name = 'books'
#



class BooksConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'books'  # 请替换为您的应用名

    # def ready(self):
    #     def run_spider():
    #         print(f"Starting spider at {datetime.now()}...")
    #         subprocess.run(["scrapy", "crawl", "books"], cwd="C:\\Users\\Mr.Zhang\\MyCodes\\kejian_project\\bookspider\\",capture_output=True, text=True)  # 替换my_spider_name为您爬虫的名字
    #         print("Spider has finished.")
    #
    #     scheduler = BackgroundScheduler()
    #     scheduler.add_job(run_spider, 'interval', seconds=180)  # 例如，每小时运行一次。您可以按需更改时间间隔
    #     scheduler.start()
