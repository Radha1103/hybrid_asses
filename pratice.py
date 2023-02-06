import time
from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Edge()
driver.maximize_window()
driver.implicitly_wait(30)
driver.get("https://demo.opencart.com/")
driver.find_element(By.XPATH,"//a[text()='Components']").click()
driver.find_element(By.PARTIAL_LINK_TEXT,"Monitors (2)").click()
driver.find_element(By.PARTIAL_LINK_TEXT,"Samsung SyncMaster 941BW").click()
driver.find_element(By.ID,"input-quantity").send_keys("2")
driver.find_element(By.ID,"button-cart").click()
time.sleep(5)
