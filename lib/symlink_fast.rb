require "symlink_fast/version"

module SymlinkFast

  class << self
    attr_accessor :configs_path
    attr_accessor :release_path
    attr_accessor :shared_path
  end

  def self.command( configs )
    configs.map do |config|
     symlink config
    end.join(' && ')
  end

  def self.symlink( config )
    "ln -s '#{ configs_path }/#{ config }.yml' '#{ release_path }/config/'"
  end

end
