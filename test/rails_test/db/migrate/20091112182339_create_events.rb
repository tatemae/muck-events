class CreateEvents < ActiveRecord::Migration
  
  def self.up
    
    create_table :event_users, :force => true do |t|
      t.integer  :user_id
      t.integer  :event_id
      t.timestamps
    end

    add_index :event_users, ["user_id"], :name => "index_event_users_on_user_id"
    add_index :event_users, ["event_id"], :name => "index_event_users_on_event_id"

    create_table :events, :force => true do |t|
      t.integer  :user_id
      t.string   :title
      t.datetime :start_at
      t.datetime :end_at
      t.string   :summary
      t.string   :location
      t.text     :description
      t.text     :uri
      t.integer  :eventable_id
      t.string   :eventable_type
      t.integer  :attendees_count, :default => 0, :null => false
      t.timestamps
    end
    
  end

  def self.down
    drop_table :event_users
    drop_table :events
  end
  
end
