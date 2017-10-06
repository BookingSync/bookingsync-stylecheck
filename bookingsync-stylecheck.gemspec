require "date"

Gem::Specification.new do |s|
  s.name          = "bookingsync-stylecheck"
  s.version       = "0.0.10"
  s.date          = Date.today
  s.summary       = "Automatic style check for BookingSync projects"
  s.description   = "Wraps rubocop for simple and consistent experience"
  s.authors       = ["Piotr Marciniak"]
  s.email         = "mandaryyyn@gmail.com"
  s.files         = Dir["{config,lib}/**/*", "MIT-LICENSE", "README.md"]
  s.homepage      = "https://gihub.com/BookingSync/bookingsync-stylecheck"
  s.license       = "MIT"

  s.add_dependency "rubocop", "~> 0.49.0"
  s.add_development_dependency "rake"
end
