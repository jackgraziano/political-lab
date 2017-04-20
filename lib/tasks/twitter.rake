namespace :twitter do
  desc "listen"
  task :listen => :environment do

    topics = ["lula", "dilma", "temer", "serra", "aecio", "bolsonaro", "bolsomito", "doria", "moro"]
    @client.filter(track: topics.join(","), language: 'pt') do |object|
     a = Politic.create(full_text: object.full_text, tweet_id: object.id, retweet_count: object.retweet_count )
    end

  end
end
