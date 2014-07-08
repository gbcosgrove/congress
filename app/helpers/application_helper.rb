module ApplicationHelper
  def party_abbrev(name)
    if name == "R"
      "Republican"
    elsif name == "D"
      "Democrat"
    elsif name == "I"
      "Independent"
    end
  end

  m = Madison.new
end
