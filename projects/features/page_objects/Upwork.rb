class Upwork

  def initialize(browser)
    @browser = browser
  end


 # Element Location started

  def searchbar
    @browser.find_element(:xpath ,'(//div//input[@placeholder=\'Find Freelancers\'])[3]')
  end


=begin
  def searchbar
    @browser.element(:xpath => "(//div//input[@placeholder='Find Freelancers'])[3]")
  end
=end

  def title
    @browser.find_element(:xpath, "//button[@id='next']")
  end

  def entire_control
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[2]/div//div[@class='d-lg-none']")
  end

  def title_fl(i)
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[#{i}]/div/article/div[1]/div/div[2]/div[1]/h4/a")
  end

  def overview(i)
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[#{i}]/div/article/div[1]/div/div[2]/div[2]/h4")
  end

  def skills(i)
    @browser.find_element(:xpath => "//*[@id='oContractorResults']//article/div[1]/div/div[3]/span[#{i}]/a/span")
  end

  def skillsIJ(i,j)
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[#{i}]/div/article//div/div[3]/span[#{j}]/a/span")
  end


  def headerToApear
    @browser.find_element(:css => "#oContractorSearch > header")
  end

  #////*[@id="oContractorResults"]/div/section[i]/div/article/div[1]/div/div[1]/div/div/div/a/img

  def photo
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[2]/div/article/div[1]/div/div[1]/div/div/div/a/img")
  end


  #//*[@id="optimizely-header-container-default"]/div[1]/div[1]/div/div[2]/h2/span

  def matched_name
    @browser.find_element(:xpath => "//*[@id='optimizely-header-container-default']/div[1]/div[1]/div/div[2]/h2/span")
  end

  def matched_overview
    @browser.find_element(:xpath => "//*[@id='optimizely-header-container-default']/div[2]/div[1]/h3/span/span[1]")
  end



=begin
  def title
    @browser.find_element(:xpath, "//button[@id='next']")
  end

  def entire_control
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[2]/div//div[@class='d-lg-none']")
  end

  def title_fl
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[2]/div/article/div[1]/div/div[2]/div[1]/h4/a")
  end

  def overview
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[2]/div/article/div[1]/div/div[2]/div[2]/h4")
  end

  def skills
    @browser.find_element(:xpath => "//*[@id='oContractorResults']//article/div[1]/div/div[3]/span[1]/a/span")
  end


 #////*[@id="oContractorResults"]/div/section[i]/div/article/div[1]/div/div[1]/div/div/div/a/img

  def photo
    @browser.find_element(:xpath => "//*[@id='oContractorResults']/div/section[2]/div/article/div[1]/div/div[1]/div/div/div/a/img")
  end


 #//*[@id="optimizely-header-container-default"]/div[1]/div[1]/div/div[2]/h2/span

  def matched_name
    @browser.find_element(:xpath => "//*[@id='optimizely-header-container-default']/div[1]/div[1]/div/div[2]/h2/span")
  end

  def matched_overview
    @browser.find_element(:xpath => "//*[@id='optimizely-header-container-default']/div[2]/div[1]/h3/span/span[1]")
  end
=end

end