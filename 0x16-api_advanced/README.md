# Reddit API Project

## Resources
Read or watch:
- [Reddit API Documentation](https://www.redditinc.com/docs)
- [Query String](https://en.wikipedia.org/wiki/Query_string)

## Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

### General
- How to read API documentation to find the endpoints you’re looking for
- How to use an API with pagination
- How to parse JSON results from an API
- How to make a recursive API call
- How to sort a dictionary by value

## Copyright - Plagiarism
You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
You are not allowed to publish any content of this project.
Any form of plagiarism is strictly forbidden and will result in removal from the program.

## Requirements
### General
- Allowed editors: vi, vim, emacs
- All your files will be interpreted/compiled on Ubuntu 20.04 LTS using python3 (version 3.4.3)
- All your files should end with a new line
- The first line of all your files should be exactly `#!/usr/bin/python3`
- Libraries imported in your Python files must be organized in alphabetical order
- A `README.md` file, at the root of the folder of the project, is mandatory
- Your code should use the PEP 8 style
- All your files must be executable
- The length of your files will be tested using wc
- All your modules should have documentation (`python3 -c 'print(__import__("my_module").__doc__)'`)
- You must use the Requests module for sending HTTP requests to the Reddit API

## Tasks

### 0. How many subs?
Write a function that queries the Reddit API and returns the number of subscribers (not active users, total subscribers) for a given subreddit. If an invalid subreddit is given, the function should return 0.

#### Requirements:
- Prototype: `def number_of_subscribers(subreddit)`
- If not a valid subreddit, return 0.
- NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.

Example usage:
```bash
$ python3 0-main.py programming
756024
$ python3 0-main.py this_is_a_fake_subreddit
0
```
Repository file: [0-subs.py](https://github.com/username/alx-system_engineering-devops/blob/master/0x16-api_advanced/0-subs.py)

### 1. Top Ten
Write a function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.

#### Requirements:
- Prototype: `def top_ten(subreddit)`
- If not a valid subreddit, print None.
- NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.

Example usage:
```bash
$ python3 1-main.py programming
Firebase founder's response to last week's "Firebase Costs increased by 7000%!"
How a 64k intro is made
HTTPS on Stack Overflow: The End of a Long Road
Spend effort on your Git commits
It's a few years old, but I just discovered this incredibly impressive video of researchers reconstructing sounds from video information alone
From the D Blog: Introspection, Introspection Everywhere
Do MVC like it’s 1979
GitHub is moving to GraphQL for v4 of their API (v3 was a REST API)
Google Bug Bounty - The 5k Error Page
PyCon 2017 Talk Videos
$ python3 1-main.py this_is_a_fake_subreddit
None
```
Repository file: [1-top_ten.py](https://github.com/username/alx-system_engineering-devops/blob/master/0x16-api_advanced/1-top_ten.py)

### 2. Recurse it!
Write a recursive function that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found for the given subreddit, the function should return None.

#### Requirements:
- Prototype: `def recurse(subreddit, hot_list=[])`
- If not a valid subreddit, return None.
- NOTE: Invalid subreddits may return a redirect to search results. Ensure that you are not following redirects.
- Your code will NOT pass if you are using a loop and not recursively calling the function! This /can/ be done with a loop but the point is to use a recursive function. :)

Example usage:
```bash
$ python3 2-main.py programming
932
$ python3 2-main.py this_is_a_fake_subreddit
None
```
Repository file: [2-recurse.py](https://github.com/username/alx-system_engineering-devops/blob/master/0x16-api_advanced/2-recurse.py)
