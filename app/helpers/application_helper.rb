module ApplicationHelper

    def is_home?
        controller.controller_name == "public" && controller.action_name == "home"
    end
    def is_auth?
        controller.controller_name == "sessions" || controller.action_name == "registrations"
    end

    def flash_notifications 
        flash_messages = []

        flash.each do |type, message|
            type = 'success' if type == 'notice'
            type = 'error' if type == 'alert' || type == 'danger'
            text = "toastr['#{type}']('#{message}');"
            flash_messages << text.html_safe unless message.blank?
        end 

        "<script> $(function(){ #{ flash_messages.join("\n") } }); </script>".html_safe if flash_messages.any? 
    end


end
