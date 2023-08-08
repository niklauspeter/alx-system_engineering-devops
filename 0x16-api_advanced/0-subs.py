#!/usr/bin/python3
"""function requests from Reddit API to returns the
number of subscribers for a given subreddit passed as bash arg"""

import requests


def number_of_subscribers(subreddit):
    """function queries the Reddit API and then returns the number of
    subscribers for a particular subreddit"""
    url = 'http://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'User-Agent': 'My User Agent 1.0'}
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        return data.get('data').get('subscribers')
    else:
        return 0
