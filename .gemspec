Gem::Specification.new do |s|
    s.name          = 'dangerless'
    s.version       = IO.read('version.txt')
    s.license       = 'MIT'
    s.summary       = 'Automatically Add Cloning (Safe) Variants of Bang (Dangerous) Methods (method!)'
    s.description   = 'Programmatically generate instance methods that return a cloned copy of the object.'
    s.homepage      = 'https://github.com/karagenit/dangerless'
    s.author        = 'Caleb Smith'
    s.email         = 'karagenit@outlook.com'
    s.files         = ['lib/dangerless.rb']
    s.require_paths = ['lib/']
    s.platform      = Gem::Platform::RUBY

    s.add_development_dependency 'rubocop',                     '~> 0.49'
    s.add_development_dependency 'rdoc',                        '~> 4.2'
    s.add_development_dependency 'bundler',                     '~> 1.15'
    s.add_development_dependency 'rake',                        '~> 12.0'
    s.add_development_dependency 'test-unit',                   '~> 3.2'
    s.add_development_dependency 'github_changelog_generator',  '~> 1.14'
end
