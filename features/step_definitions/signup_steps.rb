When(/^I am on Appimation home page/) do
  visit('/')
  # 1.1.'Try now' button
  find(:css, '#start_button')
  find(:xpath, "//button[@id = 'start_button']")

  # 1.2.'Sign up' button
  find(:css, '#signup-mobile')
  find(:xpath, "//div[@id = 'signup-mobile']")

  # 1.3.'Contact Us' section
  find(:css,'#cta')
  find(:xpath,"//section[@id='cta']")

  # 1.4. “Contact Us” name input
  find(:css, 'input[name="name"]') #ver1
  find(:css, '#name') #ver2
  find(:xpath, "//input[@id='name']")

  # 1.5. “Contact Us” email input
  find(:css,'input[id="email"]')
  find(:xpath, "//input[@id='email']")

  # 1.6. “Contact Us” message input
  find(:css, 'textarea[id="contactus-message"]')
  find(:xpath, "//textarea[@id='contactus-message']")

  # 1.7. “Contact Us” send button
  find(:css, 'div[class=submit-contactus]>input[id="contactus-button"]')
  find(:xpath, "//div[@class='submit-contactus']/input[@id='contactus-button']")

  # 1.8. FaceBook logo at the bottom of page
  find(:css, 'ul[class = "icons"] > li > a[class="icon fa-facebook"]') #ver1
  find(:css, 'ul[class="icons"] > li:only-child > a') #ver2
  find(:xpath, "//ul[@class = 'icons']//a[@class='icon fa-facebook']")

  # 1.9. All Feature sections in list
  all(:css, "section[id='main']>section[class='box special features']>div[class='features-row']").each do |elem|
    puts elem
  end
  puts " "

  all(:xpath, "//section[@id='main']/section[@class='box special features']/div[@class='features-row']").each do |element|
    puts element
  end
  puts " "

  #1.10. Chain Requests with reusable data image
  image_css = find(:css, "div[class='features-row']:first-child > section:first-child > img") 
  image_xpath = find(:xpath, "//div[@class='features-row']//h3[contains(text(), 'Chain requests with reusable data')]/preceding-sibling::img")
  
  
  #find(:css, "#video")
  #find(:css, ".feature-image")
  #find(:xpath, "//h3[contains(text(), 'Team up')]/preceding-sibling::img")
end