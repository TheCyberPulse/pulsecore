require 'rake'

namespace :db do
  desc 'Set all user password to the default password.'
  task :reset_passwords => %i[environment] do
    if ENV['allow_mass_password_update'] == 'yes' && !Rails.env.production?
      puts 'Setting all user password to the default password...'
      User.find_each do |user|
        user.password = ENV['default_password']
        user.save!
      end
    else
      puts "Environment is #{Rails.env}, skipping password reset."
    end
  end

  desc 'Re-create and re-seed the database'
  task :reinit => [
    'db:drop',
    'db:create',
    'db:migrate',
    'db:seed',
    'db:reset_passwords'
  ]

  desc 'Alias for db:reinit'
  task :reinitialize => ['db:reinit']
end
