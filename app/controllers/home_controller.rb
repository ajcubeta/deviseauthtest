class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to user_index_path
    else
      render home_index_path
    end
  end

  def show
    @subscriber = []
    @contacts = @server_object["master client"]["privilege_contacts"].query({"Status" => ["active", "Inactive", "dormant"]}, :max_records => 10)
    @contacts.each do |contact|
      unless contact["email"].blank?
        if Rails.env == "development"
          email = contact['email'].strip.split(/,|\(|\)|\/|\s/)[0]
          email = "abcd_#{email}"
          # new_user = User.create(:email => email, :password => 'testtest')
        else
          email = contact['email'].strip.split(/,|\(|\)|\/|\s/)[0]
          # new_user = User.create(:email => email, :password => 'testtest')
        end
        @subscriber << email
      end
    end
    return @subscriber
  end

end
