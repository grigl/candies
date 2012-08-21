namespace :user_fix do
  task :add_contacts_to_users => :environment do
    users = User.all

    users.each do |user|
      if user.default_address
        user.update_attribute(:firstname, user.default_address.firstname)
        user.update_attribute(:lastname, user.default_address.lastname)
        user.update_attribute(:phone, user.default_address.phone)
      else
        user.update_attribute(:firstname, 'firstname')
        user.update_attribute(:lastname, 'lastname')
        user.update_attribute(:phone, 'phone')
      end
    end
  end
end