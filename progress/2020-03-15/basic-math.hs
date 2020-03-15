-- Doubles the given number:
double x = x + x

-- Checks if a number is even (divisible by 2):
isEven x = x `rem` 2 == 0

-- The $ operator is used for avoid parentheses. Each operand that appears
-- AFTER will take precedence over what came before.
-- https://stackoverflow.com/a/1290727/7445826
--
-- So:
--
--     isOdd x = not (isEven x)
--
-- Is the same as:
--
--     isOdd x = not $ isEven x
--
-- The . operator composes two functions that accepts some input. E.g.:
--
--     isOdd x = not . isEven $ x
--
-- Will compose the `not` function with `isEven`. In mathematics notation, we
-- represent it as: `isOdd(x) = not(isEven(x))`. The $ operator was used here to
-- avoid the parentheses. Therefore, the above excerpt is the same as:
--
--     isOdd x = (not . isEven) x
--
-- Finally, here we have the implemented version of `isOdd`, which negates the
-- returned value of `isEven`, by composing it with `not`.
isOdd x = not . isEven $ x
