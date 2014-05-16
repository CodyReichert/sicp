squared x = x * x

bigger x y = if x > y then x else y

sumOfBigger x y z = if x > y
					then squared x + squared (bigger y z)
					else squared y + squared (bigger x z)
