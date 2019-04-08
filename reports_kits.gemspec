require File.expand_path('../lib/reports_kits/version', __FILE__)

Gem::Specification.new do |s|
  s.authors       = ["aipanhara"]
  s.email         = ["titpanhara@gmail.com"]
  s.summary       = 'Beautiful, interactive charts for Ruby on Rails'
  s.description   = 'ReportsKits lets you easily create beautiful charts with customizable, interactive filters.'
  s.homepage      = 'https://github.com/Panhara28/reports_kits'
  s.name          = 'reports_kits'
  s.require_paths = ["lib"]
  s.files         = `git ls-files`.split($\)
  s.version       = ReportsKits::VERSION
  s.license       = 'MIT'
  s.add_runtime_dependency 'rails', '~> 5'
  s.add_runtime_dependency 'spreadsheet', '~> 1.1'

  s. add_development_dependency 'appraisal', '~> 0'
  s.add_development_dependency 'rspec', '~> 3'
  s.add_development_dependency 'database_cleaner', '~> 1'
  s.add_development_dependency 'factory_girl', '~> 4'
  s.add_development_dependency 'groupdate', '~> 3'
  s.add_development_dependency 'pg', '~> 0.15'
  s.add_development_dependency 'pry', '~> 0'
  s.add_development_dependency 'pry-byebug', '~> 1'
  s.add_development_dependency 'timecop', '~> 0'
end
