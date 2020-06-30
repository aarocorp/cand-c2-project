# Because of some errors with Go not handling well the json return, I have made some changes.
# The function return is now a dict turns into a JSON object
# Error below
# cannot unmarshal array into Go value of type map[string]interface {}

import os, json

def lambda_handler(event, context):
    result = { "message" : "{} from Lambda!".format(os.environ['greeting']) }
    return result
