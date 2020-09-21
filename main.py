from getpass import getpass

from pyotp import TOTP


def main():
    secret = getpass(prompt='Secret: ', stream=None)
    totp = TOTP(secret)
    print(totp.now())


if __name__ == '__main__':
    try:
        exit(main())
    except KeyboardInterrupt:
        raise SystemExit(130)
