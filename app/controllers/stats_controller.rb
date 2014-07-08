class StatsController < ApplicationController

  # GET /stats
  # GET /stats.json
  def index
     @top_pols = Sunlight::Influence::Politician.top_politicians_by_contributions_received(limit: "50", cycle: "2012")
     @top_industries = Sunlight::Influence::Industry.top_industries(limit: "50", cycle: "2012")
     @top_orgs = Sunlight::Influence::Organization.top_organizations_by_contributions_given(limit: "50", cycle: "2012")
     @top_ind = Sunlight::Influence::Individual.top_individuals_by_contributions_given(limit: "50", cycle: "2012")
  end


end
