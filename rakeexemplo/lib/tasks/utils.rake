namespace :utils do
  desc "Cria Usuarios Aletorios"
  task setup_user: :environment do
  	if Rails.env.development?
		if ARGV.size == 2 && ENV['QTD'] != ""
		  	ENV['QTD'].to_i.times do |i|
				user_name = Faker::Name.name
				puts "Criando Usuario #{user_name}"
				User.create(name: user_name)
			end
		else
			puts "vc n informou a QTD"
		end
	else
		puts "vc n esta e m desenvolvimento"
	end
  end
end