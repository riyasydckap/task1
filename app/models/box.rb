class Box 
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :sku_prefix, type: String
  field :sku_postfix, type: String
  has_many :drops

end
