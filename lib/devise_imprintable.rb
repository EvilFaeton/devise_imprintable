require "devise"

require "devise_imprintable/version"
require "devise_imprintable/model"
require "devise_imprintable/hook"

module DeviseImprintable
  
end


Devise.with_options :model => true do |d|
  d.add_module :imprintable
end