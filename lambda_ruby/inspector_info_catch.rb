require "json"

File.open("inspector_info.json") do |f|
    data = JSON.load(f)

    status_medium = data["detail"]["severity"]
    puts status_medium
end