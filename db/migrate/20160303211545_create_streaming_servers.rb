class CreateStreamingServers < ActiveRecord::Migration
  def change
    create_table :streaming_servers do |t|
      t.string :ip_address
      t.string :ip_port
      t.integer :provider_id

      t.timestamps null: false
    end
  end
end
