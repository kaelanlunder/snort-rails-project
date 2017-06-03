# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170602225827) do

  create_table "snort_event_collectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "abuse_queue"
    t.string "abuse_sent"
    t.bigint "cid"
    t.string "class2"
    t.bigint "dst_ip"
    t.bigint "dst_port"
    t.bigint "icmp_code"
    t.bigint "icmp_type"
    t.bigint "ip_csum"
    t.bigint "ip_flags"
    t.bigint "ip_hlen"
    t.bigint "ip_id"
    t.bigint "ip_len"
    t.bigint "ip_off"
    t.bigint "ip_proto"
    t.bigint "ip_tos"
    t.bigint "ip_ttl"
    t.bigint "ip_ver"
    t.timestamp "last_modified"
    t.bigint "last_uid"
    t.bigint "priority"
    t.bigint "sid"
    t.string "signature"
    t.bigint "signature_gen"
    t.bigint "signature_id"
    t.bigint "signature_rev"
    t.bigint "src_ip"
    t.bigint "src_port"
    t.bigint "status"
    t.timestamp "timestamp"
    t.bigint "unified_event_id"
    t.bigint "unified_event_ref"
    t.timestamp "unified_ref_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
