class User < ActiveRecord::Base

  # omniauth method taken from the Site Point tutorial, takes argument of auth_hash from Facebook (or any other provider we'd want to use)
  def User.from_omniauth(auth_hash)
    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
    user.name = auth_hash['info']['name']
    user.location = auth_hash['info']['location']
    user.photo_url = auth_hash['info']['image']
    user.profile_link = auth_hash['info']['urls']['Facebook']
    # user.birthday = auth_hash['extra']['raw_info']['age_range']['min']
    # suggest changing db schema to something like t.integer "age" (so saving user.age as an int instead of user.birthday as a string)
    user.save!
    user
  end

# Example of an actual auth_hash from Facebook, using the info specs that we defined in config/initialize/omniauth.rb
#
# {"provider"=>"facebook",
#  "uid"=>"627641780718854",
#  "info"=>
#   {"name"=>"Jeremy Stoll",
#    "image"=>"http://graph.facebook.com/627641780718854/picture",
#    "urls"=>{"Facebook"=>"https://www.facebook.com/  app_scoped_user_id/627641780718854/"},
#    "location"=>"Omaha, Nebraska"}, #end of info hash
#  "credentials"=>
#   {"token"=>
#     "CAAPuZBIDwMccBADZACP2kYY24VtgmeApc59QzeUsUVkf6gY0pr7KPSt9lFZBbvNZBWsEXQZBPiKypS6eC9Fijc3rqEginb3jrZAWHFZBwVwA1w3ZAw1NsMZAkR1JS3wofmhnyvKvtG1KmZAgGFxtlck40YJ4l2dAOHZCcGYSDs8ooBbkDRwcUPSe1SCLG5s80qi1UsZD",
#    "expires_at"=>1466531685,
#    "expires"=>true},#end of credential hash
#  "extra"=>
#   {"raw_info"=>
#     {"id"=>"627641780718854",
#      "name"=>"Jeremy Stoll",
#      "picture"=>
#       {"data"=>
#         {"is_silhouette"=>false,
#          "url"=>
#           "https://scontent.xx.fbcdn.net/hprofile-xta1/v/t1.0-1/p50x50/10653479_366890350127333_4062170428179442606_n.jpg?oh=37964ec9318197b4c62e1c9efd6e9a8e&oe=57BEF115"
#         }
#       },#end of data hash
#      "link"=>"https://www.facebook.com/app_scoped_user_id/627641780718854/",
#      "age_range"=>{"min"=>21},
#      "location"=>{"id"=>"113132652033783", "name"=>"Omaha, Nebraska"} #ends location
#     }#ends raw info
#   } #ends extra
# } #ends auth hash


end
