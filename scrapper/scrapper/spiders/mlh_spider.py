import scrapy
from w3lib.http import basic_auth_header

class MlhSpider(scrapy.Spider):
    name = "mlhhacks"
    
    def start_requests(self):
        url = "https://mlh.io/seasons/2025/events"
        headers = {
            "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36"
        }
        yield scrapy.Request(url=url, headers=headers, callback=self.parse)

    def parse(self, response):
        filename = "mlh-hackathons.html"
        with open(filename, "wb") as f:
            f.write(response.body)
        self.log(f"Saved file {filename}")
