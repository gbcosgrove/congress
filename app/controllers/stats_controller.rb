class StatsController < ApplicationController

  # GET /stats
  # GET /stats.json


  def index
    options = {limit: params[:limit], cycle: params[:cycle]}
      if options[:limit] == nil
    options[:limit] = "50"
    end
    if options[:cycle] == nil
        options[:cycle] == "2012"
    end

     @top_pols = Sunlight::Influence::Politician.top_politicians_by_contributions_received(options)
     @top_industries = Sunlight::Influence::Industry.top_industries(options)
     @top_orgs = Sunlight::Influence::Organization.top_organizations_by_contributions_given(options)
     @top_ind = Sunlight::Influence::Individual.top_individuals_by_contributions_given(options)
  end


end
