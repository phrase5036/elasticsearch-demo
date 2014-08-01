module Searchable
  extend ActiveSupport::Concern

  included do
    ActiveRecord::Base.establish_connection( :adapter => 'mysql2', :database => "test_development", :host => "localhost", :password => "xxxxxxxxxx")
    include Elasticsearch::Model
  end
end