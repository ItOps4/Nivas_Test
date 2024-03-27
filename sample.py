from selenium import webdriver
from selenium.webdriver.firefox.options import Options
import time

# Configure Firefox options for headless mode
firefox_options = Options()
firefox_options.headless = True  # Enable headless mode

# Specify the path to the Firefox WebDriver executable
# Update this path to the location of your geckodriver executable
firefox_driver_path = 'geckodriver'

# Initialize Firefox WebDriver with options
driver = webdriver.Firefox(executable_path=firefox_driver_path, options=firefox_options)

# Navigate to the website
driver.get("https://www.saucedemo.com/")

# Wait for 7 seconds (not recommended but included for demonstration)
time.sleep(7)

# Close the browser session
driver.quit()  # Using quit() instead of close() for headless mode
print("Ran")
