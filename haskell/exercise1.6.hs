average x y = ((x + y) / 2)
square x = x * x
improve guess x = average guess (x / guess)
goodEnough guess x = if ((guess * guess) - x) < x * 0.001
                         then 1
                        else 0 

sqrIter guess x = if goodEnough == 1
                      then guess
                      else sqrIter (improve guess x) x

sqrt x = sqrIter 1.0 x
