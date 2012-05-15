require 'symlink_fast'

Capistrano::Configuration.instance.load do

  on :load do
    find_and_execute_task('symlink_fast:init')
  end

  # we want to run the symlinking once the code is copied
  # but before any code is run that might depend on the
  # yaml files being in place.
  after 'deploy:update_code', 'symlink_fast'

  namespace symlink_fast do
    task :default, :except => { :no_release => true } do
      run SymlinkFast::command( fetch(:symlink_configs, nil) )
    end

    task :init do
      SymlinkFast.release_path = release_path
      SymlinkFast.shared_path = shared_path
      SymlinkFast.configs_path = "#{ shared_path }/config"
    end
  end

end
