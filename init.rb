require 'espeo_global_user_roles/models/role_patch'
require 'espeo_global_user_roles/models/user_patch'
require 'espeo_global_user_roles/hooks'

Redmine::Plugin.register :espeo_global_user_roles do
  name 'Espeo Budget plugin'
  author 'espeo@jtom.me'
  description 'This is a plugin for Redmine'
  version '1.0.0'
  url 'http://espeo.pl'
  author_url 'http://jtom.me'
end
