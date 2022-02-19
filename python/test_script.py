#!/usr/bin/python3

import jessentials

def main():
    jessentials.ensure_root_privileges()

    jessentials.run_command("sudo apt update")

if __name__ == "__main__":
    main()
