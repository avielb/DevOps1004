a = "Hello world"
b = 4
c = False
d = ["ben", "raz", 32, ["Ski", "Snowboard"]]
e = ["aviel", 32, True]
f = {"fname": "ben", "lname": "raz", "age": 32, "hobbies": ["Ski", "Snowboard"]}
g = [{"fname": "ben", "lname": "raz", "age": 32, "hobbies": ["Ski", "Snowboard"]},
     {"fname": "aviel", "lname": "buskila", "age": 32, "hobbies": ["Ukelele"]}]
print(a)
print(a)
print(d[1])
d[3] = ["Guitar"]
print(d)
e[2] = 40
print(f["lname"])
if f["lname"] != "ben":
    print("your name is ben")

print(g[0]["lname"])
print(g[1]["lname"])