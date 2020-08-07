from contextlib import suppress
from getpass import getpass
from pyotp import TOTP


def main():
    secret = getpass(prompt='Secret: ', stream=None)
    totp = TOTP(secret)
    print(totp.now())


if __name__ == '__main__':
    with suppress(KeyboardInterrupt):
        exit(main())
