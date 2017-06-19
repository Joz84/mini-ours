desc "This task is called by the Heroku scheduler add-on"
task :ours_request => :environment do
  require 'open-uri'
  url = "http://barchen-ours.herokuapp.com/api/v1/mini_ours"
  text = open(url).read
  json = JSON.parse(text)
  inscriptions = json.map{ |element| element["inscriptions"] }.flatten
  inscriptions.each do |inscription|
    Inscription.create( moodle_id: inscription["moodle_id"],
                        ours_id: inscription["inscription_id"])
  end
end
