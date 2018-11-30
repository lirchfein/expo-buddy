namespace :scraper do
  desc "Scrapes IFA exhibitors and saves them to each Expo"
  task exhibitors: :environment do
  p "Starting scraper"
    (1..20).each do |i|
      p "opening page#{i}"
      url = "https://www.virtualmarket.ifa-berlin.de/en/search?itemtype=company&page=#{i}&limit=96"
      html_file = open(url).read
      html_doc = Nokogiri::HTML(html_file)
       html_doc.search('ul.ngn-search-list > li').each do |element|
        name = element.search('h2').text.strip
        icon_url = element.search('.ngn-company-image img').attr('src').value
        if icon_url == "/images/elements/no-image-company.png"
          icon = nil
        else
          icon = icon_url
        end
        hall = element.search('.ngn-hallname').text.strip
        stand = element.search('.ngn-stand').text.strip # We could set location to hall + stand
        location = "#{hall} #{stand}"
        description = element.search('.ngn-description').text.strip
        Expo.all.each do |e|
          p "Scraping exhibitors for #{e.name}"
          exhib = Exhibitor.create!(name: name, icon: icon, hall: hall, stand: stand, location: location, description: description, expo: e)
          puts "Just created Exhibitor #{exhib.name}"
        end
      end
    end
  end
end
