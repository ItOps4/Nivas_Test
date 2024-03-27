from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
import time

# Configure Chrome options for headless mode
chrome_options = Options()
chrome_options.add_argument("--headless")  # Enable headless mode

# Initialize Chrome WebDriver with options
driver = webdriver.Chrome(ChromeDriverManager().install(), options=chrome_options)

# Maximize the window (not applicable in headless mode)
# driver.maximize_window()

# Navigate to the website
driver.get("https://www.saucedemo.com/")

# Wait for 7 seconds (not recommended but included for demonstration)
time.sleep(7)

# Close the browser session
driver.quit()  # Using quit() instead of close() for headless mode
print("Ran")