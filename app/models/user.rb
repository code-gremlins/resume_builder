# frozen_string_literal: true

# Represents an external user
class User < ApplicationRecord
  CITIZENSHIP = %w[us_citizen].freeze # can't remember what values were discussed
  VETERAN_STATUS = %w[active veteran].freeze

  has_many :positions
  has_many :opportunities
  has_many :addresses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :citizenship, presence: true, inclusion: { in: CITIZENSHIP }
  validates :veteran_status, inclusion: { in: VETERAN_STATUS }
end
