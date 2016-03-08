class CreateExperimentConfigs < ActiveRecord::Migration
  def change
    create_table :experiment_configs do |t|
      t.integer :ack_rate
      t.integer :ack_size
      t.integer :packet_size
      t.integer :packet_rate
      t.integer :duration
      t.string :description

      t.timestamps null: false
    end
  end
end
