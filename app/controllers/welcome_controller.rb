class WelcomeController < ApplicationController
	
  def index
  	puts request.headers["Content-Type"]
  	NewRelic::Agent.add_custom_parameters({uuid: request.uuid})
  	puts request
  end

  def foobar
  	puts "foobar!!!!!!!"
  	NewRelic::Agent.add_custom_parameters({uuid_stuff: request.uuid})
  	puts request
  end
end
