require "factory_girl"

Dir[Rails.root + "factories/*.rb"].each do |file|
  require file
end