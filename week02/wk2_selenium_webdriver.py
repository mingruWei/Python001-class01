from selenium import webdriver
import time
try:
    browser = webdriver.Chrome()
    browser.get("https://shimo.im/login?from=home")
    time.sleep(1)
    browser.find_element_by_xpath('//*[@id="root"]/div/div[2]/div/div/div/div[2]/div/div/div[1]/div[1]/div/input').send_keys("13029387850")
    time.sleep(1)
    browser.find_element_by_xpath('//*[@id="root"]/div/div[2]/div/div/div/div[2]/div/div/div[1]/div[2]/div/input').send_keys("1988610")
    time.sleep(1)
    browser.find_element_by_xpath('//button[contains(@class,"sm-button submit sc-1n784rm-0 bcuuIb")]').click()
    cookies = browser.get_cookies() # 获取cookies
    # print(cookies)
    time.sleep(3)
except Exception as e:
    print(e)
# finally:    
    # browser.close()