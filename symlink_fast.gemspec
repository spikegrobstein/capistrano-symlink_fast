# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "symlink_fast/version"

Gem::Specification.new do |s|
  s.name        = "symlink_fast"
  s.version     = SymlinkFast::VERSION
  s.authors     = ["Spike Grobstein"]
  s.email       = ["spikegrobstein@mac.com"]
  s.homepage    = "https://github.com/spikegrobstein/capistrano-symlink_fast"
  s.summary     = %q{Fast Capistrano config symlinking}
  s.description = %q{Symlink your configs in a single execution of run when deploying with Capistrano}

  s.rubyforge_project = "symlink_fast"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('capistrano', '>= 2.12.0')
end
