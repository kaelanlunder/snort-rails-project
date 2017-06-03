require 'test_helper'

class SnortEventCollectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snort_event_collector = snort_event_collectors(:one)
  end

  test "should get index" do
    get snort_event_collectors_url, as: :json
    assert_response :success
  end

  test "should create snort_event_collector" do
    assert_difference('SnortEventCollector.count') do
      post snort_event_collectors_url, params: { snort_event_collector: { abuse_queue: @snort_event_collector.abuse_queue, abuse_sent: @snort_event_collector.abuse_sent, cid: @snort_event_collector.cid, class2: @snort_event_collector.class2, dst_ip: @snort_event_collector.dst_ip, dst_port: @snort_event_collector.dst_port, icmp_code: @snort_event_collector.icmp_code, icmp_type: @snort_event_collector.icmp_type, ip_csum: @snort_event_collector.ip_csum, ip_flags: @snort_event_collector.ip_flags, ip_hlen: @snort_event_collector.ip_hlen, ip_id: @snort_event_collector.ip_id, ip_len: @snort_event_collector.ip_len, ip_off: @snort_event_collector.ip_off, ip_proto: @snort_event_collector.ip_proto, ip_tos: @snort_event_collector.ip_tos, ip_ttl: @snort_event_collector.ip_ttl, ip_ver: @snort_event_collector.ip_ver, last_modified: @snort_event_collector.last_modified, last_uid: @snort_event_collector.last_uid, priority: @snort_event_collector.priority, sid: @snort_event_collector.sid, signature: @snort_event_collector.signature, signature_gen: @snort_event_collector.signature_gen, signature_id: @snort_event_collector.signature_id, signature_rev: @snort_event_collector.signature_rev, src_ip: @snort_event_collector.src_ip, src_port: @snort_event_collector.src_port, status: @snort_event_collector.status, timestamp: @snort_event_collector.timestamp, unified_event_id: @snort_event_collector.unified_event_id, unified_event_ref: @snort_event_collector.unified_event_ref, unified_ref_time: @snort_event_collector.unified_ref_time } }, as: :json
    end

    assert_response 201
  end

  test "should show snort_event_collector" do
    get snort_event_collector_url(@snort_event_collector), as: :json
    assert_response :success
  end

  test "should update snort_event_collector" do
    patch snort_event_collector_url(@snort_event_collector), params: { snort_event_collector: { abuse_queue: @snort_event_collector.abuse_queue, abuse_sent: @snort_event_collector.abuse_sent, cid: @snort_event_collector.cid, class2: @snort_event_collector.class2, dst_ip: @snort_event_collector.dst_ip, dst_port: @snort_event_collector.dst_port, icmp_code: @snort_event_collector.icmp_code, icmp_type: @snort_event_collector.icmp_type, ip_csum: @snort_event_collector.ip_csum, ip_flags: @snort_event_collector.ip_flags, ip_hlen: @snort_event_collector.ip_hlen, ip_id: @snort_event_collector.ip_id, ip_len: @snort_event_collector.ip_len, ip_off: @snort_event_collector.ip_off, ip_proto: @snort_event_collector.ip_proto, ip_tos: @snort_event_collector.ip_tos, ip_ttl: @snort_event_collector.ip_ttl, ip_ver: @snort_event_collector.ip_ver, last_modified: @snort_event_collector.last_modified, last_uid: @snort_event_collector.last_uid, priority: @snort_event_collector.priority, sid: @snort_event_collector.sid, signature: @snort_event_collector.signature, signature_gen: @snort_event_collector.signature_gen, signature_id: @snort_event_collector.signature_id, signature_rev: @snort_event_collector.signature_rev, src_ip: @snort_event_collector.src_ip, src_port: @snort_event_collector.src_port, status: @snort_event_collector.status, timestamp: @snort_event_collector.timestamp, unified_event_id: @snort_event_collector.unified_event_id, unified_event_ref: @snort_event_collector.unified_event_ref, unified_ref_time: @snort_event_collector.unified_ref_time } }, as: :json
    assert_response 200
  end

  test "should destroy snort_event_collector" do
    assert_difference('SnortEventCollector.count', -1) do
      delete snort_event_collector_url(@snort_event_collector), as: :json
    end

    assert_response 204
  end
end
