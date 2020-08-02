from re import sub
from getpass import getpass
from pyotp import TOTP


secret = getpass(prompt='Secret: ', stream=None)
totp = TOTP(secret)
print(totp.now())
