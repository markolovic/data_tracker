class Experiment < ActiveRecord::Base
  has_many :independent_vars

  def done?
  end

end
