namespace :utils do
  desc 'Popular com 10 customers'
  task setup_customer10: :environment do
  	10.times do |i|
	    customer_name = Faker::Name.name
		customer_email = Faker::Internet.email
	    puts "Cadastrando #{customer_name}"
	    Customer.create(name: "Customer - customer_name", 
	       	email: "customer_email", 
	       	birthday: Date.today, 
	       	obs:"bladsdas")
	end
  end

  desc 'Popular com 20 customers'
  task setup_customer20: :environment do
  	20.times do |i|
	    customer_name = Faker::Name.name
		customer_email = Faker::Internet.email
	    puts "Cadastrando #{customer_name}"
	    Customer.create(name: "Customer - customer_name", 
	       	email: "customer_email", 
	       	birthday: Date.today, 
	       	obs:"bladsdas")
	end
  end

  desc 'Popular tabela com QTD customers'  
  task setup_customer: :environment do
  	if Rails.env.development?
  		if ARGV.size == 2  		
  			ENV['QTD'].to_i.times do |i|
			    customer_name = Faker::Name.name
				customer_email = Faker::Internet.email
			    puts "Cadastrando #{customer_name}"
			    Customer.create(name: "Customer - customer_name", 
			       	email: "customer_email", 
			       	birthday: Date.today, 
			       	obs:"bladsdas")
			end
		else
			puts 'Informe QTD'
		end
	 else
		puts 'Vc n esta em desenvolvimento'
	 end
	end
end
