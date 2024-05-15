# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trigram do
  before do
    create(:trigram)
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:body).is_equal_to(3) }
    it { is_expected.to validate_uniqueness_of(:body).scoped_to(:user_uuid) }
  end
end
