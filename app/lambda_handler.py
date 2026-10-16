import json
def handler(event, context):
    body = {"tasks": [{"id": "1", "title": "Ship lab", "done": False}]}
    return {"statusCode": 200, "headers": {"Content-Type": "application/json"}, "body": json.dumps(body)}
