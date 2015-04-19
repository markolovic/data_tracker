class Experiment < ActiveRecord::Base
  has_many :independent_vars
  has_many :dependent_vars

  def done?
  end

end
