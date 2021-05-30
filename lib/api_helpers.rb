require 'constants'
require 'faraday'
require 'faraday_middleware'

module ApiHelpers
  def self.return_people_taller_than(height)
    uri = '/api/people/'
    response = Api.connection.get uri
    people = []
    while response.body['next'] || response.body['previous']
      puts "Checking page #{response.body['next']}"
      response.body['results'].each do |hash|
        if hash["height"].to_i > height
          puts hash['height']
          puts hash['name']
          people.push(hash['name'])
        end
      end

      if response.body['next'] == nil
        return people
      else
        next_page = response.body['next'].scan(/\d/).join('')
        response = Api.connection.get uri + "?page=#{next_page}" 
      end
    end
  end
end
