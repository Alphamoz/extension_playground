#!/usr/bin/env python3

import time
import logging

# Set up logging configuration
logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s - %(levelname)s - %(message)s')

# Example usage of logging
logging.info("This is an info message.")
logging.error("This is an error message.")

def main():
    logging.info("Starting the application...")
    print("Welcome, Apotek Tutup")

if __name__ == "__main__":
    main()
    while True:
        print("Hello, welcome to the extension program", flush=True)
        time.sleep(1)