require "rails_helper"

RSpec.describe Message, type: :model do
  it { is_expected.to validate_presence_of :message }
  it { is_expected.to validate_presence_of :name }
end
