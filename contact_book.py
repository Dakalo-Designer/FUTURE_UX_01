contact={'name':'Dakalo','phone':'0621857472','email':'dakalomabasa25@gmail.com'}



def add_contact():
    name=input("Name: ")
    phone=input("Phone: ")
    email=input("Email: ")
    contact['name']=name
    contact['phone'] = phone
    contact[email]=email
   # print(contact.values())
    print('Added')

#add_contact()         
def search_contact():
   name=input('which name would you like to search...')
   contact.get(name)

def delete_contact():
   name =int(input('which contact index would you like to delete...'))
   contact.pop(contact[name])

edit=input('would you like to edit you contacts?(yes/no)')


while True:

   if edit == 'no':
     print('ok,bye!')
     break
   if edit == 'yes':
     action=input("1=Add ,2=Search ,3=Delete ,4=View ,5=Exit\n")
     if action=="5": 
      break
     if action=="1":
      add_contact()
     elif action =="2":
       search_contact()
    #elif action ==3:
       
    #elif action ==4:

    #elif action ==5:
        

