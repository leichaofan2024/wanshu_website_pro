class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string     :title
      t.text       :description
      t.string     :structure
      t.string     :processor
      t.string     :chip
      t.string     :memory
      t.string     :disk
      t.string     :network_controller
      t.string     :expand_groove
      t.string     :video_card
      t.string     :exterior_port
      t.string     :power
      t.string     :temperature_evn
      t.string     :humidity_evn
      t.timestamps
    end
  end
end
