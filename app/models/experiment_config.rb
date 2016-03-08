class ExperimentConfig < ActiveRecord::Base
  validates :duration, :ack_rate, :ack_size, :packet_size, :packet_rate, presence: true
  validates :ack_rate, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 60 }
  validates :ack_size, numericality: { only_integer: true, greater_than_or_equal_to: 12, less_than_or_equal_to: 65536 }
  validates :packet_size, numericality: { only_integer: true, greater_than_or_equal_to: 12, less_than_or_equal_to: 65536 }
  validates :packet_rate, numericality: { only_integer: true, greater_than_or_equal_to: 4, less_than_or_equal_to: 30 }
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 60, less_than_or_equal_to: 1800 } 
end
