Gem::Specification.new do |s|
  s.name = 'ppds-libs'
  s.version = File.open('VERSION') { |f| f.read }
  s.author = 'Paul Philippov'
  s.description = "A collection of ruby code shared between different projects of PPDS."
  s.email = 'themactep@gmail.com'
  s.extra_rdoc_files = ['README', 'LICENSE', 'VERSION', 'Changelog']
  s.files = Dir.glob("{lib,spec}/**/*") + \
            %w(LICENSE README VERSION Changelog ppds-libs.gemspec)
  s.homepage = 'http://themactep.com/'
  s.require_path = "lib"
  s.rubyforge_project = 'ppds-libs'
  s.summary = "A collection of ruby code shared between different projects of PPDS."
  s.has_rdoc = false
end
