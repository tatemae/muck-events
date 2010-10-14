#include MuckEvents::Models::MuckEvent
module MuckEvents
  module Models
    module MuckEvent
      
      extend ActiveSupport::Concern
      
      included do
        
        acts_as_taggable_on :tags

        validates_presence_of :user, :title, :start_at

        belongs_to :user
        belongs_to :eventable, :polymorphic => true

        has_many :event_users
        has_many :attendees, :source => :user, :through => :event_users, :dependent => :destroy

        scope :by_newest, order('created_at DESC')
      end

      
      def create_activity
        if eventable.respond_to?(:feed_to)
          feed_item = FeedItem.create(:item => self, :creator_id => self.user_id)
          (eventable.feed_to).each{ |u| u.feed_items << feed_item }
        end
      end
      
    end
  end
end
