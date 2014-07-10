class Politician < ActiveRecord::Base
  def top_industries(args)
    Sunlight::Influence::Politician.top_industries(args)
  end

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%")
  end
end
