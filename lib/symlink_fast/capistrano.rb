require 'capistrano'

Capistrano::Configuration.instance.load do

  after 'deploy:copy_code', 'symlink_fast'

  namespace symlink_fast do
    task :default, :except => { :no_release => true } do
      run SymlinkFast::command( fetch(:symlink_configs, nil) )
    end
  end

end
