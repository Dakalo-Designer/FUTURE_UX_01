name=input('Name:')
geo=float(input('Geography mark : '))
Mathematics=float(input('Mathematics mark : '))
Physics=float(input('Physics mark : '))

Average =(geo+Mathematics+Physics)//3


#Distinction
if Average >=80 :
    print('\n\nName : '+name)
    print(f'\nYou got an average of : (A){Average}')
    print(f'\nGeography mark   {geo}\nMathematics mark  {Mathematics}\nPhysics mark   {Physics}')
    print('\nPass with dinstinction')

#subject mark being <40
    if geo <40:
        print('\n\Geography needs intervention')
    if Physics<40:
        print('\nPhysics needs intervention')
    if Mathematics<40:
        print('\nMathematics needs intervention')


#70%
elif Average >=70 :

    print('\n\nName : '+name)
    print(f'\nYou got an average of : (B){Average}')
    print(f'\nGeography mark   {geo}\nMathematics mark  {Mathematics}\nPhysics mark   {Physics}')
    print('\nPass')

#subject mark being <40
    if geo <40:
        print('\nGeography needs intervention')
    if Physics<40:
        print('\nPhysics needs intervention')
    if Mathematics<40:
        print('\nMathematics needs intervention')


#60%
elif Average >=60 :

    print('\n\nName : '+name)
    print(f'\nYou got an average of : (C){Average}')
    print(f'\nGeography mark   {geo}\nMathematics mark  {Mathematics}\nPhysics mark   {Physics}')
    print('\nPass')

#subject mark being <40
    if geo <40:
        print('\nGeography needs intervention')
    if Physics<40:
        print('\nPhysics needs intervention')
    if Mathematics<40:
        print('\nMathematics needs intervention')


#50%
elif Average >=50 :

    print('\n\nName : '+name)
    print(f'\nYou got an average of : (B){Average}')
    print(f'\nGeography mark   {geo}\nMathematics mark  {Mathematics}\nPhysics mark   {Physics}')
    print('\nPass')

#subject mark being <40
    if geo <40:
        print('\nGeography needs intervention')
    if Physics<40:
        print('\nPhysics needs intervention')
    if Mathematics<40:
        print('\nMathematics needs intervention')

#Fail
else:

    print('\n\nName : '+name)
    print(f'\nYou got an average of : (F){Average}')
    print(f'\nGeography mark   {geo}\nMathematics mark  {Mathematics}\nPhysics mark   {Physics}')
    print('\nFail')

#subject mark being <40
    if geo <40:
        print('\nGeography needs intervention')
    if Physics<40:
        print('\nPhysics needs intervention')
    if Mathematics<40:
        print('\nMathematics needs intervention')

