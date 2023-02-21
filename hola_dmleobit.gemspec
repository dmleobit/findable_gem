Gem::Specification.new do |s|
  s.name        = "hola_dmleobit"
  s.version     = "0.0.4"
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Nick Quaranto"]
  s.email       = "nick@quaran.to"
  s.files       = ["lib/hola_dmleobit.rb",
                   'lib/findable/definition.rb',
                   'lib/findable/find.rb',
                   'lib/findable/finder.rb',
                   'lib/findable/strategies/friendly_id.rb']
  s.homepage    = "https://rubygems.org/gems/hola"
  s.license     = "MIT"

  s.add_runtime_dependency('activesupport', '~> 4.2', '>= 4.2.0')
end
