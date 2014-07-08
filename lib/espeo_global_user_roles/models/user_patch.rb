module EspeoGlobalUserRoles::Models::UserPatch
  def self.included(base)
    base.extend         ClassMethods
    base.send :include, InstanceMethods

    base.class_eval do
      has_many :user_roles, :dependent => :delete_all, :inverse_of => :user
      has_many :roles, :through => :user_roles

      safe_attributes 'role_ids'
    end
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
  end
end

Rails.application.config.to_prepare do
  User.send :include, EspeoGlobalUserRoles::Models::UserPatch
end
