require 'twilio-ruby'

module TwilioModule
  def send_message(users, body)
    account_sid = "AC892d1ad25d2cd70dd0880beb725a1bf4"
    auth_token = "4b4820bbab194b3cb12ae7e4352b1d10"
    client = Twilio::REST::Client.new account_sid, auth_token
     
    from = "+12488262836" # Your Twilio number
     
    #friends = {
    #"2483809188" => "Andrew Chen"
    #}
    users.each do |user|
      client.account.messages.create(
        :from => from,
        :to => user,
        :body => body
      )
      puts "Sent message to #{user}"
    end
  end

  def send_activation_text(user, pin)
    account_sid = "AC892d1ad25d2cd70dd0880beb725a1bf4"
    auth_token = "4b4820bbab194b3cb12ae7e4352b1d10"
    client = Twilio::REST::Client.new account_sid, auth_token
     
    from = "+12488262836" # Your Twilio number
    to = user.phone_number
    body = "Welcome to Soapbox! Your pin is #{pin}."

    client.account.messages.create(
      :from => from,
      :to => to,
      :body => body
    )
    puts "activation text sent to #{to}"
  end
end