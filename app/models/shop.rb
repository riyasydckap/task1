# frozen_string_literal: true
class Shop 
  include Mongoid::Document
  include Mongoid::Timestamps

  include ShopifyApp::ShopSessionStorageWithScopes

  def api_version
    ShopifyApp.configuration.api_version
  end
end
