def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, values|
    values.each do |info, names|
      names.each do |name|
      new_hash[name] ||= {}
      new_hash[name][attribute] ||= []
      new_hash[name][attribute] << info.to_s     
      end
    end
  end    
  new_hash
end


=begin
From:
pigeon_data = {
  :color(ATTRIBUTE) => {
    :purple(INFO) => ["Theo", "Peter Jr.", "Lucky"],(NAME)
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
 
  }
}
To:
pigeon_list = {
  "Theo"(NAME) => {
    :color(ATTRIBUTE) => ["purple", "grey"],(INFO)
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}
=end
