class Tests
  def initialize(pages) #konstruktors, kas dod pieeju lapām
    @pages = pages
  end

  def login_tests
    @login_tests ||= LoginTest.new(@pages) #pārbauda, vai eksistē objekts. Ja neeksistē, izveido jaunu, citādāk izmanto jau esošo
    @login_tests
  end

end