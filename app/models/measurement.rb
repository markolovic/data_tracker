class Measurement < ActiveRecord::Base
  belongs_to :variable, polymorphic: true

end
