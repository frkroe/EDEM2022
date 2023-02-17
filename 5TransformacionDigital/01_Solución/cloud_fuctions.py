#HACKATHON 10/02/23

import base64
import time
import json
from google.cloud import pubsub_v1

def array_order(event, context):
    inicio = time.time()
    pubsub_message = base64.b64decode(event['data']).decode('utf-8')
    msg = json.loads(pubsub_message)

    array = json.loads(msg["challenges"][0]["challengePayload"])

    for i in range(len(array)):
        for j in range(i+1, len(array)):
            if array[i] > array[j]:
                array[i], array[j] = array[j], array[i]
            
    fin = time.time()


    pubsub_message2 = {"requestId": msg["requestId"],
                "timeOfReception": inicio, 
                "team": "team4all",
                "responses":[
                {
                "challengeId": msg["challenges"][0]["challengeId"],
                "challengePayload": msg["challenges"][0]["challengePayload"],
                "challengeType": str(type(msg["challenges"][0]["challengePayload"])),
                "payload": array, 
                "timeStart": inicio, 
                "timeEnd": fin
                }
                ]
                }

    publisher = pubsub_v1.PublisherClient()
    json_str = json.dumps(pubsub_message2)
    topic_path = publisher.topic_path("edem-363212", "hackaton-gft-edem-replies")
    publish_future = publisher.publish(topic_path, json_str.encode("utf-8"))