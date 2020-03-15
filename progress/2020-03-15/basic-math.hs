doubleMe x = x + x

isEven x = x `rem` 2 == 0
isOdd x = not $ isEven x
