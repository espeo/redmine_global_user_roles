module EspeoGlobalUserRoles
  class Hooks < Redmine::Hook::ViewListener

    # Add user.roles field to the users#edit form.
    # 
    # Available context variables:
    # :user
    # :form
    def view_users_form(context = {})
      context[:roles] = Role.find_all_givable

      context[:controller].send(:render_to_string, {
        :partial => "users/form_roles",
        :locals => context
      })
    end

    # Show user.roles in users#show.
    # 
    # Available context variables:
    # :user
    def view_account_left_bottom(context = {})
      context[:controller].send(:render_to_string, {
        :partial => "users/show_roles",
        :locals => context
      })
    end

  end
end
