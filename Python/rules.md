
Use Function
-----
★ indent      
~~~~~~Python
def say_hello():
  print("hello")
  print("bye")

say_hello()
~~~~~~

~~~~~~Python
def plus(a, b):
  print(a + b)

plus(2, 5)
~~~~~~

~~~~~~Python
def say_hello(name="annoymous"):
  print("hello", name)

say_hello()
say_hello("hi")


---result
hello annoymous
hello hi
~~~~~~

~~~~Python
def say_hi(name, emotion):
  return f"Hello Nico, my name is {name} and I am very {emotion} to join the challenge!"

hi = say_hi(name="Hi", emotion="Happy")
print(hi)


---result
Hello Nico, my name is Hi and I am very Happy to join the challenge!
~~~~

if Statement

~~~Python
def if_test(num):
    if num > 100:
        print('100 < num')
    elif num > 50:
        print('50 < num <= 100')
    elif num > 0:
        print('0 < num <= 50')
    elif num == 0:
        print('num == 0')
    else:
        print('num < 0')


if_test(100)


---result
50 < num <= 100
~~~
