require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, info|
    info.each do |trait, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] ||= []
        pigeon_list[name][attribute] << trait.to_s
      end
    end
  end
  pigeon_list
end
