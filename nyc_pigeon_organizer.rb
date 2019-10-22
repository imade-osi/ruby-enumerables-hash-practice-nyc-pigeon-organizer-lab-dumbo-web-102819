def nyc_pigeon_organizer(data)
    pigeon_hash = {}
    
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        if !pigeon_hash[name]
          pigeon_hash[name] = {}
        end
        
        if !pigeon_hash[name][color_gender_lives] 
          pigeon_hash[name][color_gender_lives] = []
        end
        pigeon_hash[name][color_gender_lives].push(stats.to_s)
      end
    end 
  end
  
  pigeon_hash

end
