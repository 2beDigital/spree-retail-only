# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_retail_only'
  s.version     = '2.4.3'
  s.summary     = 'Creates products that are only avaiblable for retail users'
  s.description = 'Creates a retail role and a checkbox on all products to make them avaiblable for retail only.'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = '2BeDigital'
  s.email     = 'support@2BeDigital.com'
  s.homepage  = 'http://www.2BeDigital.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.2'
  s.add_dependency 'spree_static_content', '>= 2.3.0'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
