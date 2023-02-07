import re


def main():
    you = "doomed"
    u_not = re.findall(r"'(.*?)'", f"{type(True)}")

    if not isinstance(you, bool):
        print(f"No, you not {u_not[0]}")
    else:
        raise SystemExit


if __name__ == "__main__":
    main()
