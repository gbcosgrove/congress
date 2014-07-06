class Politician < ActiveRecord::Base
  def top_industries(args)
    Sunlight::Influence::Politician.top_industries(args)
  end
end
