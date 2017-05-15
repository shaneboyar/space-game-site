class Model < ActiveRecord::Base
  default_scope { order(score: :desc).limit(10) }
end