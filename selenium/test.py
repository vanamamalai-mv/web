
from selenium import webdriver
from selenium.webdriver.common.by import By
from pathlib import Path

# Open Chrome
driver = webdriver.Chrome()

try:
    # Open our HTML application
    page = Path(__file__).with_name("index.html")
    driver.get(page.resolve().as_uri())

    # Enter student name
    driver.find_element(By.ID, "name").send_keys("Arun")

    # Enter student email
    driver.find_element(By.ID, "email").send_keys(
        "arun@example.com"
    )

    # Click Register button
    driver.find_element(
        By.CSS_SELECTOR, "button[type='submit']"
    ).click()

    # Check the success message
    message = driver.find_element(By.ID, "message").text

    assert message == "Student registered successfully!"

    # Check the registered student
    student = driver.find_element(By.ID, "studentList").text

    assert student == "Arun - arun@example.com"

    print("TEST PASSED")
    print("Student registration works correctly.")

finally:
    driver.quit()
