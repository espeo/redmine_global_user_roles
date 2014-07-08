module EspeoGlobalUserRoles
  class Hooks < Redmine::Hook::ViewListener

    # Add time_entry.role field to the timelog form.
    # 
    # Given context variables:
    # :user - User
    # :form - form
    def view_users_form(context = {})
      context[:roles] = Role.find_all_givable

      context[:controller].send(:render_to_string, {
        :partial => "users/form_roles",
        :locals => context
      })
    end

  end
end
