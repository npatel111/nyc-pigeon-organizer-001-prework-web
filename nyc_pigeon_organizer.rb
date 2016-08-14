require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, info|
    info. each do |attribute2, names|
      names.each do |name|
        pigeon_list[name] ||= {}
          pigeon_list[name][attribute.to_sym] ||= []
            pigeon_list[name][attribute.to_sym] << attribute2.to_s
      end
    end
  end
  pigeon_list    
end