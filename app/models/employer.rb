require 'rfm'

class Employer < User
  # 
  # CONFIG = {
  #     :host => HOST_LOCAL,
  #     :account_name => USER,
  #     :password => PWD,
  #     :ssl => false
  # }
  
  # @server_object ||= Rfm::Server.new(CONFIG)
  # contacts = @server_object["master client"]["privilege_contacts"].query({"Status" => ["active", "Inactive", "dormant"]}, :max_records => 10)
  # puts contacts
end