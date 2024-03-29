doubleMe x = x + x

doubleUs x y = x*2 + y*2 

mynull lst
    |lst == [] = True
    |otherwise = False


mylength lst 
    |mynull lst = 0
    |otherwise = 1 + mylength (init lst)

myreverse lst   
    |mylength lst == 1 = lst
    |otherwise =  myreverse (tail lst) ++ [head lst]

mytake int lst
    |mylength lst < int = lst
    |mylength lst == int = lst
    |otherwise = mytake int (init lst)
    
mydrop int lst
    |int > mylength lst = []
    |int == 0 = lst
    |otherwise = mydrop (int-1) (tail lst)

mymaximum lst
    |mylength lst == 1 = (head lst)
    |(head lst) > (last lst) =  mymaximum (init lst)
    |otherwise = mymaximum (tail lst)

myminimum lst
    |mylength lst == 1 = (head lst)
    |(head lst) < (last lst) =  myminimum (init lst)
    |otherwise = myminimum (tail lst)