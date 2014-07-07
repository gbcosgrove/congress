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

  def donor_industries_chart(options)
    industries = top_industries(options)
    puts industries
    collect = []
    industries.each do |industry|
      collect << industry["amount"].to_f
    end
    puts collect
    base = collect.sum
    chart = []
    industries.each do |industry|
      chart << [industry["name"].downcase.capitalize.to_s, ((industry["amount"].to_f/base)*100).round(2)]
    end
    chart
  end

  def donor_contributors_chart(options)
    contributors = top_contributors(options)
    puts contributors
    collect = []
    contributors.each do |contributor|
      collect << contributor["total_amount"].to_f
    end
    puts collect
    base = collect.sum
    chart = []
    contributors.each do |contributor|
      chart << [contributor["name"].downcase.capitalize.to_s, ((contributor["total_amount"].to_f/base)*100).round(2)]
    end
    chart
  end

  def test_function(name)
    totals = collect_totals(name)
    overview = contribution_overview(totals)
    contribution_amount_key(overview)
  end

  def collect_totals(name)
    Sunlight::Influence::EntitySearch.retrieve_overview(search: name)["totals"]
  end

  def convert_to_array(array)
    array.each {|h| h.to_a }
  end

  def contribution_overview(hash)
    collect = []
    hash.each_key {|k| collect << {"#{k}" => "#{hash[k]["recipient_amount"]}"}}
    collect.delete_if {|h| h["-1"]}
  end

  def count_overview(hash)
    collect = []
    hash.each_key {|k| collect << {"#{k}" => "#{hash[k]["recipient_count"]}"}}
    collect.delete_if {|h| h["-1"]}
  end

  def contribution_amount_key(array)
    collect = []
    array.each {|object| collect << object.keys.first.to_i }
    collect
  end

  def contribution_amount_value(array)
    collect = []
    array.each {|object| collect << object.values.first.to_i }
    collect
  end

  def contribution_count_key(array)
    keys = []
    array.each {|object| keys << object.keys.first.to_i }
    keys
  end

  def contribution_count_value(array)
    keys = []
    array.each {|object| keys << object.values.first.to_i }
    keys
  end

end
