class Target < ApplicationRecord
  validates :user_id, numericality: { only_integer: true }
  validates :target, presence: true, length: { maximum: 255}
  validates :task, presence: true, length: { maximum: 255}
  validates :deadline, presence: true, length: { maximum: 50}
  validates :kpi, numericality: {only_integer: true, greater_than: 0, less_than: 32}
end
