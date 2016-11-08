require 'yaml'
require 'droplet_kit'

#class DOAdmin
  #def initialize
	config = YAML.load_file('config.yaml')
	@token = config['token']
	@client = DropletKit::Client.new(access_token: @token)
	puts @client.account.info.to_json
	@sshkeys = @client.ssh_keys.all
	@sshkeys.each {|key| puts key.name}
	
	droplets = @client.droplets.all
	droplets.each {|drop|   puts drop}
 # end
#end


