class Admin
  class ParameterSanitizer < Devise::ParameterSanitizer
    ADMIN_PARAMS = %i[
      first_name
      last_name
      email
      password
      password_confirmation
    ].freeze

    def initialize(*)
      super
      permit(:account_update, keys: ADMIN_PARAMS)
    end
  end
end
