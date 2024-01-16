#!/usr/bin/python3

"""
Recursive function that queries the Reddit API and returns a list containing
the titles of all hot articles for a given subreddit. If no results are found
for the given subreddit, the function should return None.
"""


import requests


def recurse(subreddit, hot_list=[]):
    """Return a list containing the titles of all hot articles"""
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    headers = {'User-Agent': 'My User Agent 1.0'}
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        for post in response.json().get('data').get('children'):
            hot_list.append(post.get('data').get('title'))
        after = response.json().get('data').get('after')
        if after is not None:
            recurse(subreddit, hot_list)
        return hot_list
    else:
        return None
