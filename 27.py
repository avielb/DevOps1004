import requests
response = requests.get("https://github.com/users/avielb/repos")

repos_list = response.json()
for repo in repos_list:
    if repo["id"] == 4:
        print(repo["name"])