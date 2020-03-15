-- Sobra o dado número.
double x = x + x

-- Verifica se o número é par:
isEven x = x `rem` 2 == 0

-- O operador $ serve para evitar os parênteses. Qualquer coisa que aparecer
-- depois dele terá precedência sobre o que vier antes.
-- https://stackoverflow.com/a/1290727/7445826
--
-- Então:
--
--     isOdd x = not (isEven x)
--
-- É o mesmo que:
--
--     isOdd x = not $ isEven x
--
-- O operador . serve para compor duas funções que aceitam algum input.
-- Por exemplo:
--
--     isOdd x = not . isEven $ x
--
-- Irá compor a função `not` com `isEven`. Em notação matemática, deve se
-- representar desta forma: `isOdd(x) = not(isEven(x))`. O operador $ foi usado
-- para evitar os parênteses. De modo que o trecho acima é equivalente à:
--
--     isOdd x = (not . isEven) x
--
-- Então, temos a função `isOdd`, que nega a função `isEven`. Determina,
-- portanto, se um número é ímpar:
isOdd x = not . isEven $ x
