# == Schema Information
# Schema version: 20090213002439
#
# Table name: event_users
#
#  id         :integer(4)    not null, primary key
#  user_id    :integer(4)    
#  event_id   :integer(4)    
#  created_at :datetime      
#  updated_at :datetime      
#

class EventUser < ActiveRecord::Base
  
  belongs_to :user
  belongs_to :event, :counter_cache => 'attendees_count'
  
  scope :current_events_for, lambda { |*args| where(["events.start_at > Now() AND event_users.user_id = ?", (args.first.id)]).includes(:event) }
end
