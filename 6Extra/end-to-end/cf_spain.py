import requests
import random
import uuid
from google.cloud import storage

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

def process_images(event, context):
    num = random.randint(2, 1479)
    url = f"https://infocar.dgt.es/etraffic/data/camaras/{num}.jpg"
    path = f"spain/{num}_{uuid.uuid4()}.jpg"
    upload_image_to_gcs(url, path)

# Create a client
client = storage.Client()

# Set the bucket name
bucket_name = 'img_traffic_spain_dgt_bucket'