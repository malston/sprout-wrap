# Aliases
sprout_base_bash_it_enable_feature 'aliases/bundler'
sprout_base_bash_it_enable_feature 'aliases/git'
sprout_base_bash_it_enable_feature 'aliases/osx'
sprout_base_bash_it_enable_feature 'aliases/vagrant'

# Plugins
sprout_base_bash_it_enable_feature 'plugins/git'
sprout_base_bash_it_enable_feature 'plugins/tmux'
sprout_base_bash_it_enable_feature 'plugins/tmuxinator'
sprout_base_bash_it_enable_feature 'plugins/vagrant'

# Custom
sprout_base_bash_it_custom_plugin 'bash_it/aliases.bash'
sprout_base_bash_it_custom_plugin 'bash_it/functions.bash'
sprout_base_bash_it_custom_plugin 'bash_it/path.bash'

# Theme
node.default['bash_it']['theme']='bobby'

# Customizing ~/.bash_profile
template node['bash_it']['bashrc_path'] do
  source "bash_it/bashrc.erb"
  cookbook 'malston'
  owner node['current_user']
  mode "0777"
end
