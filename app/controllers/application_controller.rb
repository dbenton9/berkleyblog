class ApplicationController < ActionController::Base

    helper_method :current_user

    # method hiding privileged access pages
    def not_found
        raise ActionController::RoutingError.new('Not Found')
    end

    # if logged in sets current user
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    # checks to to see if current_user exsist
    def require_user
        redirect_to '/login' unless current_user
    end

    ##### ROLES (admin, editor, subscriber) #####
    ##### Note heichary, admin has editor and subscriber privileges 

    # checks to see if admin
    def require_admin
        not_found unless current_user.admin?
    end

    # checks to see if editor
    def require_editor
        not_found unless current_user.editor? || current_user.admin?
    end

    # checks to see if subscriber
    def require_subscriber
        not_found unless current_user.subscriber? || current_user.editor? || current_user.admin?
    end

end
