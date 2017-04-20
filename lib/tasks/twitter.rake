namespace :twitter do
  desc "listen"
  task :listen => :environment do

    topics = ["lula", "dilma", "temer", "serra", "aecio", "bolsonaro", "bolsomito", "doria", "moro"]
    @client.filter(track: topics.join(","), language: 'pt') do |object|
      puts "*"*30
      puts "text: " + object.text if object.is_a?(Twitter::Tweet)
      puts "retweet_count: " + object.retweet_count.to_s if object.is_a?(Twitter::Tweet)
      puts "source: " + object.source if object.is_a?(Twitter::Tweet)
      puts "filter_level: " + object.filter_level if object.is_a?(Twitter::Tweet)
      puts "full_text: " + object.full_text if object.is_a?(Twitter::Tweet)
    end

  end
end
