# frozen_string_literal: true

FactoryBot.define do
  factory :trigram do
    sequence(:body) { |n| n.to_s(36).rjust(3, 'ы') }
  end
end
