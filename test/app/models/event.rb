class Event < ActiveRecord::Base
  include MuckEvents::Models::MuckEvent
  
  def after_create
    create_activity
  end

end
