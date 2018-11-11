class User
  def initialize(email, password)
    @email = email
    @password = password
  end

  def email
    @email
  end

  def password
    @password
  end

  def self.create_account
    puts "メールアドレスを入力してください"
    email = gets.chomp
    puts "パスワードを入力してください"
    password = gets.chomp
    user = User.new(email, password)
    @@users << user
  end
end
