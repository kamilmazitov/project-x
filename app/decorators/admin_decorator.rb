class AdminDecorator < ApplicationDecorator
  delegate :id, :first_name, :last_name, :email

  def full_name_with_email
    "#{object.first_name} (#{object.email})"
  end
end
