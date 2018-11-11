class Tweet
  @@tweets = []
def initialize(image, text)
  @image = image
  @text = text
end

def image
  @image
end

def text
  @text
end

def image=(val)
  @image = val
end

def text=(val)
  @text = val
end

def self.write_tweet
  puts "imageのurlを記入してね"
  image = gets.chomp
  puts "textを記入してね"
  text = gets.chomp
  tweet = Tweet.new(image, text)
  @@tweets << tweet
end

def self.show_tweets
  @@tweets.each do |tweet|
    puts "イメージurl：#{tweet.image}"
    puts "テキスト：#{tweet.text}"
    puts "----------------------------"
  end
end
end

while true do
  puts "[0]tweetを書く"
  puts "[1]tweet一覧を見る"
  puts "[2]pictweetを終了する"
  input = gets.to_i

  if input == 0
    Tweet.write_tweet
  elsif input == 1
    Tweet.show_tweets
  elsif input == 2
    exit
  else
    puts "入力された値は無効な値です"
  end
end
