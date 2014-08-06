class Article < ActiveRecord::Base
  include Searchable

  mapping do
    indexes :title
    indexes :body
  end

  def self.query_string(search_type, search)
    if search_type == 'title'
      { :query => { :match => { :title => search } } }
    elsif search_type == 'body'
      { :query => { :match => { :body => search } } }
    end
  end
end
