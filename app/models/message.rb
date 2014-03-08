class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :subject, :body

  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true

  # "name"=>"sadfas", "email"=>"asdfda", "subject"=>"asdfas", "body"=>"adfasd",
  
  def initialize(attributes = {})
    puts ">"*1000
    puts attributes.inspect

    send("name=", attributes["name"])
    send("email=", attributes["email"])
    send("subject=", attributes["subject"])
    send("body=", attributes["body"])    

    # attributes.delete["utf8"]

    # attributes.each do |name, value|
    #   send("#{name}=", value)
    # end
  end

  def persisted?
    false
  end
end