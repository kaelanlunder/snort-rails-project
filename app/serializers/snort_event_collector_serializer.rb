class SnortEventCollectorSerializer < ActiveModel::Serializer
  attributes :id, :abuse_queue, :abuse_sent, :cid, :class2, :dst_port, :icmp_code, :icmp_type, :ip_csum, :ip_flags, :ip_hlen, :ip_id, :ip_len, :ip_off, :ip_proto, :ip_tos, :ip_ttl, :ip_ver, :last_modified, :last_uid, :priority, :sid, :signature, :signature_gen, :signature_id, :signature_rev, :src_ip, :src_port, :status, :timestamp, :unified_event_id, :unified_event_ref, :unified_ref_time
end
