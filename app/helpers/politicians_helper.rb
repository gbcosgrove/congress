module PoliticiansHelper

  def overview(options)
  end

  def top_contributors(options)
    Sunlight::Influence::Politician.top_contributors(options)
  end

  def top_industries(options)
    Sunlight::Influence::Politician.top_industries(options)
  end

  def unknown_industries(options)
    Sunlight::Influence::Politician.unknown_industries(options)
  end

  def top_sectors(options)
    Sunlight::Influence::Politician.top_sectors(options)
  end

  def local_breakdowns(options)
    Sunlight::Influence::Politician.local_breakdowns(options)
  end

  def contributor_type_breakdown(options)
    Sunlight::Influence::Politician.contributor_type_breakdown(options)
  end

  def fec_summary(options)
    Sunlight::Influence::Politician.fec_summary(options)
  end

  def fec_independent_expenditures(options)
    Sunlight::Influence::Politician.fec_independent_expenditures(options)
  end
end
