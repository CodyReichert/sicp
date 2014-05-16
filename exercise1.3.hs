squared x = x * x
bigger x y = if x > y then x else y

sumOfBigger x y z = if x > y
                        then squared x + (bigger z y)
                        else squared y + (bigger z x)
