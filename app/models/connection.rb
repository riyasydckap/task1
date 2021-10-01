class Connection
  include Mongoid::Document
  include Mongoid::Timestamps
  field :price, type: Float

  belongs_to :tier
  belongs_to :entity
end
