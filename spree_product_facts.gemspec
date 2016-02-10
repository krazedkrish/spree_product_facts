# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_facts'
  s.version     = '3.0.4'
  s.summary     = 'Shows the facts related to products'
  s.description = 'Admin can add interesting facts related to products. And the user can see them. A fact is related to more than one product'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'krazedkrish'
  s.email     = 'krazedkirsh@gmail.com'
  s.homepage  = 'http://krazedkirsh.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0.4'
  s.add_dependency 'globalize', '~> 5.0.1'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
