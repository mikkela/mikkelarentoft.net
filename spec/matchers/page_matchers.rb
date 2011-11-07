RSpec::Matchers.define :contain_footer do
  match do |response|
    response.should have_selector("div.footer") do |footer|
      footer.should contain("Copyright 2011 Mikado Consult")
      footer.should contain("Design: www.yomena.de")
      footer.should contain("Photo: Mylene Bressan for openphoto.net")
      footer.should contain("CC:Attribution")
    end
  end
end

RSpec::Matchers.define :contain_top_navigation do
  match do |response|
    response.should have_selector("div.topNav") do |top|
      top.should contain("Home")
      top.should contain("Contact")
    end
  end
end

RSpec::Matchers.define :contain_left_navigation do
  match do |response|
    response.should have_selector("div.leftNav") do |left|
      left.should contain("Home")
      left.should contain("Contact")
    end
  end
end

RSpec::Matchers.define :contain_caption do |rightcaption|
  match do |response|
    response.should have_selector("div.caption") do |caption|
      caption.should contain(rightcaption)
    end
  end
end

RSpec::Matchers.define :contain_content do
  match do |response|
    response.should have_selector("div.main") do |caption|

    end
  end
end
