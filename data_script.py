import numpy as np

x = np.random.uniform(low=0, high=1)

if x < 0.5:
    print("round to 0")
else:
    print("round to 1")

print(x, round(x))