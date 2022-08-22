class ExternalApi < ApplicationRecord
  validates :title_id, presence: true, uniqueness: { scope: :api }
end
