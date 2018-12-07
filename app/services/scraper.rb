require 'open-uri'
require 'nokogiri'
require 'CSV'

# url = "http://ucaifontainebleau.com/annuaire-ucaif/"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

file = File.join(File.dirname(__FILE__), 'shop_fontainebleau.html')
html_doc = Nokogiri::HTML(File.open(file), nil, 'utf-8')

puts "starting scraping ..."
CSV.open("./scraping_results.csv", 'wb') do |csv|
  csv << ["image", "name", "location", "opening-time", "phone"]
# count = 0
  begin
    html_doc.search('.w2dc-row.w2dc-listing').each do |element|
      p image = element.search('.w2dc-listing-logo-img img')[0].attributes["src"].value.strip if element.search('.w2dc-listing-logo-img img')[0]
      p name = element.search('.w2dc-listing-header')[0].text.strip if element.search('.w2dc-listing-header')[0]
      p location = element.search('.w2dc-location')[0].text.strip if element.search('.w2dc-location')[0]
      p opening_time = element.search('.w2dc-field-output-block-textarea .w2dc-field-content')[0].text.strip if element.search('.w2dc-field-output-block-textarea .w2dc-field-content')[0]
      p phone = element.search('.w2dc-field-output-block-string .w2dc-field-content')[0].text.strip if element.search('.w2dc-field-output-block-string .w2dc-field-content')[0]
      csv << [image, name, location, opening_time, phone]
      # count += 1
    end
  rescue NoMethodError => e
    puts e
  end
  # puts count
end

puts "Finish scraping ..."

# 3/ Comment récupérer par la suite les infos et les travailler
# 4/ Besoin d'une gem dans les fichiers ?
