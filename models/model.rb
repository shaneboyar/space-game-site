class Model < ActiveRecord::Base
  default_scope { order(score: :desc) }
end