#!/usr/bin/python3

"""
Gather data from an API
save the data to a CSV file
"""

if __name__ == "__main__":
    import csv
    import requests
    import sys

    url = "https://jsonplaceholder.typicode.com/"
    user_id = sys.argv[1]
    user = requests.get(url + "users/{}".format(user_id)).json()
    todo = requests.get(url + "todos", params={"userId": user_id}).json()

    with open("{}.csv".format(user_id), "w") as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        for task in todo:
            writer.writerow([user_id, user.get("username"),
                            task.get("completed"), task.get("title")])
