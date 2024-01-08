#!/usr/bin/python3

"""Gather data from an API"""

if __name__ == "__main__":
    import requests
    import sys

    url = "https://jsonplaceholder.typicode.com/"
    user_id = sys.argv[1]
    user = requests.get(url + "users/{}".format(user_id)).json()
    todo = requests.get(url + "todos", params={"userId": user_id}).json()

    completed_tasks = [task for task in todo if task.get("completed") is True]
    print("Employee {} is done with tasks({}/{}):".format(
        user.get("name"), len(completed_tasks), len(todo)))

    for task in completed_tasks:
        print("\t {}".format(task.get("title")))
