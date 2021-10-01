class Entity 
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :msrp, type: Integer
  # field :price, type: Hash

  belongs_to :drop
  has_many :connection, dependent: :destroy

  attr_accessor :price

end
