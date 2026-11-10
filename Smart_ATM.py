Bank_Balance = 1500

withdrawal = int(input('How much would you like withdraw '))

if withdrawal <= Bank_Balance and withdrawal >0 :
    remaining= Bank_Balance-withdrawal
    print('Withdrawal succesful! Remaining balance:R' +str(remaining))
elif withdrawal <=0 :
    print('Invalid amount. You must withdraw more than R0')
else:
    print('Declined.Insufficient funds')
