class Entity 
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :MSRP, type: Integer
  field :price, type: Hash

  belongs_to :drop


end
