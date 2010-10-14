require 'muck-events'
require 'rails'

module MuckEvents
  class Engine < ::Rails::Engine
    
    def muck_name
      'muck-events'
    end
        
  end
end
