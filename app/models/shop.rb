# frozen_string_literal: true
class Shop 
  include Mongoid::Document
  include Mongoid::Timestamps
  
  include ShopifyApp::ShopSessionStorageWithScopes

  field :shopify_domain, type: String
  field :shopify_token, type: String

  # index({shopify_domain: 1}, {unique: true})

  def api_version
    ShopifyApp.configuration.api_version
  end

  def access_scopes=(scopes)
    # Store access scopes
  end
  def access_scopes
    # Find access scopes
  end

end
