require "symlink_fast/version"

module SymlinkFast

  def self.command( configs )
    configs.map do |config|
     symlink config
    end.join(' && ')
  end

  def self.symlink( config )
    "ln -s '#{ configs_path }/#{ config }.yml' '#{ release_path }/config/'"
  end

end
