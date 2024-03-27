from selenium import webdriver
from selenium.webdriver.firefox.options import Options
from webdriver_manager.firefox import GeckoDriverManager
import time

# Configure Firefox options for headless mode
firefox_options = Options()
firefox_options.add_argument("--headless")  # Enable headless mode

# Initialize Firefox WebDriver with options
driver = webdriver.Firefox(executable_path=GeckoDriverManager().install(), options=firefox_options)

# Navigate to the website
driver.get("https://www.saucedemo.com/")

# Wait for 7 seconds (not recommended but included for demonstration)
time.sleep(7)

# Close the browser session
driver.quit()  # Using quit() instead of close() for headless mode
print("Ran")
