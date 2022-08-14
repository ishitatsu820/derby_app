class Target < ApplicationRecord
  validates :target, presence: true, length: { maximum: 255}
  validates :task, presence: true, length: { maximum: 255}
  validates :dealline, presence: true, length: { maximum: 50}
  validates :kpi, numericality: { only_integer: true }
end
