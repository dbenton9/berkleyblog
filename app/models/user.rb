class User < ApplicationRecord
    has_secure_password

    ### Checking Assigned Role ###
    def admin?
        self.role == 'admin'
    end
    def editor?
        self.role == 'editor'
    end
    def subscriber?
        self.role == 'subscriber'
    end

end
