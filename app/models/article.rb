class Article < ActiveRecord::Base
  include Searchable

  mapping do
    indexes :title
    indexes :body
  end

  # def self.search(query)
  #   # ...
  # end
end
