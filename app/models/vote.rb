class Vote < ActiveRecord::Base
  belongs_to :task

  scope :up, -> { where(direction: 'up') }
  scope :down, -> { where(direction: 'down')}

end
