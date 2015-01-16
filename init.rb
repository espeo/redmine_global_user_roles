require 'espeo_global_user_roles/patches/role_patch'
require 'espeo_global_user_roles/patches/user_patch'
require 'espeo_global_user_roles/hooks'

Redmine::Plugin.register :espeo_global_user_roles do
  name 'Global User Roles plugin'
  author 'espeo@jtom.me'
  description 'Allows you to define "global" user roles - that is, roles bound to users, not members.'
  version '1.0.0'
  url 'http://espeo.pl'
  author_url 'http://jtom.me'
end
