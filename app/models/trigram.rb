# frozen_string_literal: true

# Trigram
#
# Attributes
#   body [String], required
#   created_at [DateTime]
#   updated_at [DateTime]
#   user_uuid [UUID]
#   weight [Integer], required
class Trigram < ApplicationRecord
  validates :body, presence: true, length: { is: 3 }, uniqueness: { scope: :user_uuid }
end
