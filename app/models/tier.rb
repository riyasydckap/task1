class Tier
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :position, type: Integer

  has_many :connections
end
