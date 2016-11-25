Gem::Specification.new do |s|
  s.name          = "bookingsync-stylecheck"
  s.version       = "0.0.6"
  s.date          = Date.today
  s.summary       = "Automatic style check for bookingsync projects"
  s.description   = "Wraps rubocop for simple and consisten experience"
  s.authors       = ["Piotr Marciniak"]
  s.email         = "mandaryyyn@gmail.com"
  s.files         = Dir["{config,lib}/**/*", "MIT-LICENSE", "README.md"]
  s.homepage      = "http://gihub.com/BookingSync/bookingsync-stylecheck"
  s.license       = "MIT"

  s.add_dependency "rubocop", "~> 0.41.0"
  s.add_development_dependency "rake"
end
