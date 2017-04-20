namespace :twitter do
  desc "listen"
  task :listen => :environment do

    topics = ["lula", "dilma", "temer", "serra", "aecio", "bolsonaro", "bolsomito", "doria", "moro"]
    @client.filter(track: topics.join(","), language: 'pt') do |object|
      # add in mentions
      join = topics & object.full_text.downcase.split
      join.each do |topic|
        mention = Mention.find_or_initialize_by(topic: topic, date: Date.today)
        mention.count += 1
        mention.save
      end
      # add in Politic if prob
      a = Politic.create(full_text: object.full_text, tweet_id: object.id, retweet_count: object.retweet_count )
    end
  end
end
