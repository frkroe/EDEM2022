import requests
from bs4 import BeautifulSoup
import uuid
import time
from google.cloud import storage

# Function to extract all image URLs from the HTML content
def extract_image_urls(html):
    soup = BeautifulSoup(html, 'html.parser')
    img_tags = soup.find_all('img')
    img_urls = []
    for img_tag in img_tags:
        src = img_tag['src']
        if src.startswith("https://uktraffic.live/wp-content/uploads/webcams/") and "gif" not in src:
            img_urls.append(src)
    return img_urls

def upload_image_to_gcs(url, destination_blob_name):
    try:
        r = requests.get(url, timeout=10)
        if r.status_code == 200:
            # Get the GCS bucket
            bucket = client.bucket(bucket_name)
            # Create a blob object
            blob = bucket.blob(destination_blob_name)
            # Upload the image content
            blob.upload_from_string(r.content)
            print(f"Image uploaded to GCS: {destination_blob_name}")
            return True
        else:
            print(f"Error getting image from {url}: {r.status_code}")
            return False

    except Exception as e:
        print(f"Error getting image from {url}: {e}")
        return False


# Create a client
client = storage.Client()
# Set the bucket name
bucket_name = 'img_traffic_spain_dgt_bucket'
# URL of the webpage
url = 'https://uktraffic.live/'


print(
'''
**************************************************************
***** Data Ingestion: Scotland Traffic Cameras (GCS) *********
**************************************************************
''')

while True:
    # Send a GET request to the URL
    response = requests.get(url)

    if response.status_code == 200:
        # Extract the image URLs from the response HTML
        image_urls = extract_image_urls(response.text)

        # Upload the images to GCS
        for image_url in image_urls:
            file_name = f"scotland/{uuid.uuid4()}.jpg"
            upload_image_to_gcs(image_url, file_name)

        if len(image_urls) == 0:
            print('No image found in the HTML.')
    else:
        print('Failed to retrieve the HTML content.')

    time.sleep(1)