import requests
from bs4 import BeautifulSoup
import fake_useragent

header = {
  'User-Agent' : fake_useragent.UserAgent().random 
}

link = 'https://zastavok.net'

response = requests.get(link, headers=header).text

soup = BeautifulSoup(response, 'lxml')
block_photo = soup.find('div', class_='block-photo')
images = block_photo.find_all('div', class_ = 'short_full')
for img in images:
    img_url = img.find('a').get('href')
    image_link = f'{link}{img_url}'

    response = requests.get(image_link, headers=header).text

    soup = BeautifulSoup(response, 'lxml')
    download_block = soup.find('div' , class_='block_down')
    download_link = download_block.find('a').get('href')
    result_link = f'{link}{download_link}'
    response = requests.get(result_link, headers=header).content
    with open('image.png', 'wb') as file:
        file.write(response)
