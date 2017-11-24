class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text     :title
      t.text       :description
      t.text     :structure
      t.text     :processor
      t.text     :chip
      t.text     :memory
      t.text     :disk
      t.text     :network_controller
      t.text     :expand_groove
      t.text     :video_card
      t.text     :exterior_port
      t.text     :power
      t.text     :temperature_evn
      t.text     :humidity_evn
      t.timestamps
    end
  end
end
