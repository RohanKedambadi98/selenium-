from selenium import webdriver
import  time as t
from m import *



#function to select options
def option(id,val):
    el = driver.find_element_by_id(id)
    for option in el.find_elements_by_tag_name('option'):
        if option.text == val:
            option.click()  # select() in earlier versions of webdriver
            break
#function to click radio buttons
def rad(txt):
    dl = driver.find_elements_by_tag_name('label')
    for option in dl:
        if option.text == txt:
            option.click()
            break


driver=webdriver.Chrome(executable_path="D:\\chromedriver.exe")

driver.get("https://eventsget.com/account/signin")
driver.find_element_by_name('emailid').send_keys("emailid")
driver.find_element_by_name('password').send_keys("password")
driver.find_element_by_name('login').click()
driver.find_element_by_xpath('//*[@id="right-section"]/div[2]/div/div/div[1]/div/div/div[2]/a').click()





########################################################################################################################################################################
for i in range(0,len(event_name)):
    # event name
    driver.find_element_by_name('event_title').send_keys('ghjwdgfef')

    # country
    option('country_name',country[0])
    t.sleep(3)

    # state
    option('state_name',  state[0])
    t.sleep(3)

    # city
    option('city_name', city[0])

    # event type
    option('event_type', 'Workshop')

    # radio buttons
    rad('National')
    rad('Technical')

    driver.find_element_by_xpath(".//*[contains(text(),' Engineering')]").click()

    # organization_type
    option('organization_type', 'Engineering and Technology')

    driver.find_element_by_name('dept_name').send_keys("CSE")

    driver.find_element_by_name('organization_name').send_keys("rohan kedambadi")

    driver.find_element_by_name('fromdate').send_keys(event_start_date[0])

    driver.find_element_by_name('todate').send_keys(event_end_date[0])

    driver.find_element_by_name('lastdate_apply').send_keys(event_start_date[0])

    driver.find_element_by_xpath('//*[@id="wizard"]/div/form/div[19]/div/button[1]').click()

    # description
    driver.find_element_by_id('cke_1_contents').send_keys('here goes the description')

    # free or paid
    rad('Free')

    # contact info
    driver.find_element_by_xpath(".//*[contains(text(),' Email')]").click()
    ############################################################################################################################################################################
    # submit
    driver.find_element_by_xpath('//*[@id="wizard"]/div/form/div[9]/div/button[1]').click()

    t.sleep(4)
    driver.find_element_by_xpath('//*[@id="address"]').send_keys(full_address[0])

    driver.find_element_by_xpath('//*[@id="zipcode"]').send_keys(pincode[0])

    driver.find_element_by_xpath('//*[@id="wizard"]/div/form/div[5]/div/button[1]').click()

    driver.find_elements_by_xpath('//*[@id="wizard"]/div/form/div[5]/div/button[1]').click()

    # group name

    option('group_name','**** OTHER ****')

    t.sleep(3)

    driver.find_element_by_xpath('//*[@id="postgroup_name"]').send_keys('cs01')

    # publish or not
    rad('Complete but not publish')

    driver.find_element_by_xpath('//*[@id="aggrement"]').click()

    # final submit button
    driver.find_element_by_xpath('//*[@id="wizard"]/div/form/div[7]/div/button[1]').click()

    # create new event button
    driver.find_element_by_xpath('//*[@id="right-section"]/div[1]/div[1]/a').click()

