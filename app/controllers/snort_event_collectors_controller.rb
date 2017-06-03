class SnortEventCollectorsController < ApplicationController
  before_action :set_snort_event_collector, only: [:show, :update, :destroy]

  # GET /snort_event_collectors
  def index
    @snort_event_collectors = SnortEventCollector.all

    render json: @snort_event_collectors
  end

  # GET /snort_event_collectors/1
  def show
    render json: @snort_event_collector
  end

  # POST /snort_event_collectors
  def create
    @snort_event_collector = SnortEventCollector.new(snort_event_collector_params)

    if @snort_event_collector.save
      render json: @snort_event_collector, status: :created, location: @snort_event_collector
    else
      render json: @snort_event_collector.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /snort_event_collectors/1
  def update
    if @snort_event_collector.update(snort_event_collector_params)
      render json: @snort_event_collector
    else
      render json: @snort_event_collector.errors, status: :unprocessable_entity
    end
  end

  # DELETE /snort_event_collectors/1
  def destroy
    @snort_event_collector.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snort_event_collector
      @snort_event_collector = SnortEventCollector.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def snort_event_collector_params
      params.require(:snort_event_collector).permit(:abuse_queue, :abuse_sent, :cid, :class2, :dst_ip, :dst_port, :icmp_code, :icmp_type, :ip_csum, :ip_flags, :ip_hlen, :ip_id, :ip_len, :ip_off, :ip_proto, :ip_tos, :ip_ttl, :ip_ver, :last_modified, :last_uid, :priority, :sid, :signature, :signature_gen, :signature_id, :signature_rev, :src_ip, :src_port, :status, :timestamp, :unified_event_id, :unified_event_ref, :unified_ref_time)
    end
end
