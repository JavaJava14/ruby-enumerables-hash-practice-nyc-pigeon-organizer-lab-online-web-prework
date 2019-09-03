def nyc_pigeon_organizer(data)
  pigeon = {}
  data.collect do |key, value|
    value.collect do |new_value, names|
      names.collect do |name|
        if !pigeon[name]
          pigeon[name] = {}
        end
        if !pigeon[name][key]
          pigeon[name][key] = []
        end
        pigeon[name][key].push(new_value.to_s)
      end
    end
  end
end
