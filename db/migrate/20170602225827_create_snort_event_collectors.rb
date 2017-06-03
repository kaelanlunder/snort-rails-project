class CreateSnortEventCollectors < ActiveRecord::Migration[5.1]
  def change
    create_table :snort_event_collectors do |t|
      t.string :abuse_queue
      t.string :abuse_sent
      t.integer :cid, :limit => 8
      t.string :class2
      t.integer :dst_ip, :limit => 8
      t.integer :dst_port, :limit => 8
      t.integer :icmp_code, :limit => 8
      t.integer :icmp_type, :limit => 8
      t.integer :ip_csum, :limit => 8
      t.integer :ip_flags, :limit => 8
      t.integer :ip_hlen, :limit => 8
      t.integer :ip_id, :limit => 8
      t.integer :ip_len, :limit => 8
      t.integer :ip_off, :limit => 8
      t.integer :ip_proto, :limit => 8
      t.integer :ip_tos, :limit => 8
      t.integer :ip_ttl, :limit => 8
      t.integer :ip_ver, :limit => 8
      t.timestamp :last_modified
      t.integer :last_uid, :limit => 8
      t.integer :priority, :limit => 8
      t.integer :sid, :limit => 8
      t.string :signature
      t.integer :signature_gen, :limit => 8
      t.integer :signature_id, :limit => 8
      t.integer :signature_rev, :limit => 8
      t.integer :src_ip, :limit => 8
      t.integer :src_port, :limit => 8
      t.integer :status, :limit => 8
      t.timestamp :timestamp
      t.integer :unified_event_id, :limit => 8
      t.integer :unified_event_ref, :limit => 8
      t.timestamp :unified_ref_time

      t.timestamps
    end
  end
end
