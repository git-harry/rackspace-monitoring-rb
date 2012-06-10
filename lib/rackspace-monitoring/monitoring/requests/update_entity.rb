module Fog
  module Monitoring
    class Rackspace
      class Real

        def update_entity(entity_id, options)
          request(
            :body     => MultiJson.encode(options),
            :expects  => [204],
            :method   => 'PUT',
            :path     => "entities/#{entity_id}"
          )
        end
      end
    end
  end
end

