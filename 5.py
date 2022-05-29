my_names = ["adi", "ben", "noam", "arthur", "ron"]
for i in range(1, 6):
    print(f"hello world #{i}")

for name in my_names:
    name = "moshe"

for i in range(len(my_names)):
    my_names[i] = "moshe"

a = 0
while a < 5:
    print(a)
    a = a + 1
    if a == 2:
        continue
    print("after continue")

n = [1, 2, 3, 4, 5]
result = [print(num) for num in n if num % 7 != 0 and '7' not in str(num)]
for num in n:
    if num > 2:
        result.append(num * 2)