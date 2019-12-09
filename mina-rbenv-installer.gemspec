lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'mina-rbenv-installer'
  spec.version       = '0.1'
  spec.authors       = ['David Z.']
  spec.email         = ['geek@lzw.name']
  spec.summary       = 'Mina Rbenv Installer.'
  spec.description   = 'Use mina to upgrade your ruby/rbenv version.'
  spec.homepage      = 'https://github.com/bkbabydp/mina-rbenv-installer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'mina'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
