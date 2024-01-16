#!/usr/bin/python3

"""
function that queries the Reddit API, parses the title of all
hot articles, and prints a sorted count of given keywords
"""


import requests
recurse = __import__('./2-recurse')


def count_words(subreddit, word_list):
    """
    function that queries the Reddit API, parses the title of all
    hot articles, and prints a sorted count of given keywords
    """

    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    headers = {'User-Agent': 'My User Agent 1.0'}
    hot_list = []
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
