json.users @users do |user|
  json.extract! user, :id, :username, :email, :zipcode, :expdate, :ccv, :ccnumber, :admin, :created_at, :updated_at
end
