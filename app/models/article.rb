class Article < ActiveRecord::Base
  include Searchable

  mapping do
    # ...
  end

  # def self.search(query)
  #   # ...
  # end
end
