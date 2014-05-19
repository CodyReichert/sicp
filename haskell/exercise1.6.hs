square x = x * x
average x y = (x + y) / 2
improve guess x = average (x / guess) guess

goodEnough guess x = 
        abs ((square guess - x) / x) < 0.001

sqrIter guess x = if goodEnough guess x
                      then guess
                      else sqrIter (improve guess x) x

sqrt' x = sqrIter 1.0 x
