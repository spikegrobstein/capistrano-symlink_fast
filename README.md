# SymlinkFast

SymlinkFast is a Capistrano plugin for doing post-deploy symlinking of your yaml files in a single `run` cycle rather than iterating over each config file individually.

On large deployments with a large number of configs, this can save significant overhead to the deploy time.

## Example Usage

    require "symlink_fast/capistrano"

    set :symlink_configs, [ :database, :redis, :aws ]

SymlinkFast will add a post-deploy hook to symlink your config files.

All files must live in `#{deploy_to}/shared/config` and each item in the `configs` array is assumed to be the basename of each config file. For example, `:aws` will symlink the `aws.yml` file and so on.

## Author

Spike Grobstein  
spikegrobstein@mac.com  
https://github.com/spikegrobstein

## License

MIT License
