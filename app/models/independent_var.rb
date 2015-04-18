class IndependentVar < ActiveRecord::Base
  belongs_to :experiment
  has_many :measurements, as: :variable
end
