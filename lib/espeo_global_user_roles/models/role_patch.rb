module EspeoGlobalUserRoles::Models::RolePatch
  def self.included(base)
    base.extend         ClassMethods
    base.send :include, InstanceMethods

    base.class_eval do
      has_many :user_roles, :dependent => :delete_all, :inverse_of => :role
      has_many :users, :through => :user_roles
    end
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
  end
end

Rails.application.config.to_prepare do
  Role.send :include, EspeoGlobalUserRoles::Models::RolePatch
end
