class Drop 
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  belongs_to :box
  has_many :entities
end
