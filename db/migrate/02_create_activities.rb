class CreateActivities < ActiveRecord::Migration
  create_table :activities do |t|
    t.string :title
    t.string :type
    t.date :date
    t.text :description
    t.integer :user_id
  end
end
