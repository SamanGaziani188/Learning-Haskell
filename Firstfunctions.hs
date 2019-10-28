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