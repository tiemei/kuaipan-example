Gem::Specification.new do |s|
  s.name = 'kuaipan-example'
  s.version = '0.0.2'
  s.date = '2012-04-28'
  s.summary = "a simple demo which use kuaipan.gem"
  s.description = "enjoy kuaipan.gem! enjoy it! enjoy life!"
  s.authors = ["tiemei"]
  s.email = 'jiadongkai@gmail.com'
  s.files = [
      "Gemfile",
      "Gemfile.lock",
      "README.rdoc",
      "example.rb",
      "kuaipan-example.gemspec",
      "views/index.haml",
      "views/layout.haml",
      "bin/kuaipan-example.sh"
    ]
  s.require_paths = ["lib"]
  s.homepage = 'http://rubygems.org/gems/kuaipan-examlple'
  
  s.required_ruby_version = '>= 1.9.3'
  s.required_rubygems_version = '>=1.3.6'

  s.add_runtime_dependency 'sinatra'
  s.add_runtime_dependency 'haml'
  s.add_runtime_dependency 'kuaipan', '~> 0.0.3'
end
