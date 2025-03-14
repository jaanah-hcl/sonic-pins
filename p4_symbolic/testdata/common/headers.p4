#ifndef P4_SYMBOLIC_TESTDATA_COMMON_HEADERS_P4_
#define P4_SYMBOLIC_TESTDATA_COMMON_HEADERS_P4_

#include "bitwidths.p4"
#include "sai_ids.p4"

#define ETHERTYPE_IPV4  0x0800
#define ETHERTYPE_IPV6  0x86dd
#define ETHERTYPE_ARP   0x0806
#define ETHERTYPE_LLDP  0x88cc
#define ETHERTYPE_8021Q 0x8100

#define IP_PROTOCOL_TCP    0x06
#define IP_PROTOCOL_UDP    0x11
#define IP_PROTOCOL_ICMP   0x01
#define IP_PROTOCOL_ICMPV6 0x3a
#define IP_PROTOCOLS_GRE   0x2f

#define GRE_PROTOCOL_ERSPAN 0x88be

#define ERSPAN_VERSION_TYPE_II 1

typedef bit<48> ethernet_addr_t;
typedef bit<32> ipv4_addr_t;
typedef bit<128> ipv6_addr_t;
typedef bit<12> vlan_id_t;
typedef bit<16> ether_type_t;

// "The VID value 0xFFF is reserved for implementation use; it must not be
// configured or transmitted." (https://en.wikipedia.org/wiki/IEEE_802.1Q).
const vlan_id_t INTERNAL_VLAN_ID = 0xfff;
// "The reserved value 0x000 indicates that the frame does not carry a VLAN ID;
// in this case, the 802.1Q tag specifies only a priority"
// (https://en.wikipedia.org/wiki/IEEE_802.1Q).
const vlan_id_t NO_VLAN_ID = 0x000;

// --- Intrinsic ports ---------------------------------------------------------

// Port used for PacketIO. Packets sent to this port go to the CPU.
// Packets received on this port come from the CPU.
#define SAI_P4_CPU_PORT 510

// The port used by `mark_to_drop` from v1model.p4. For details, see the
// documentation of `mark_to_drop`.
#define SAI_P4_DROP_PORT 511

// -- Protocol headers ---------------------------------------------------------

#define ETHERNET_HEADER_BYTES 14

header ethernet_t {
  ethernet_addr_t dst_addr;
  ethernet_addr_t src_addr;
  ether_type_t ether_type;
}

header vlan_t {
  // Note: Tag Protocol Identifier (TPID) will be parsed as the ether_type of
  // the ethernet header. It is technically a part of the vlan header but is
  // modeled like this to facilitate parsing and deparsing.
  bit<3> priority_code_point;      // PCP
  bit<1> drop_eligible_indicator;  // DEI
  vlan_id_t vlan_id;               // VID
  // Note: The next ether_type will be parsed as part of the vlan
  // header. It is technically a part of the ethernet header but is modeled like
  // this to facilitate parsing and deparsing.
  ether_type_t ether_type;
}

#define IPV4_HEADER_BYTES 20

header ipv4_t {
  bit<4> version;
  bit<4> ihl;
  bit<6> dscp;  // The 6 most significant bits of the diff_serv field.
  bit<2> ecn;   // The 2 least significant bits of the diff_serv field.
  bit<16> total_len;
  bit<16> identification;
  bit<1> reserved;
  bit<1> do_not_fragment;
  bit<1> more_fragments;
  bit<13> frag_offset;
  bit<8> ttl;
  bit<8> protocol;
  bit<16> header_checksum;
  ipv4_addr_t src_addr;
  ipv4_addr_t dst_addr;
}

#define IPV6_HEADER_BYTES 40

header ipv6_t {
  bit<4> version;
  bit<6> dscp;  // The 6 most significant bits of the traffic_class field.
  bit<2> ecn;   // The 2 least significant bits of the traffic_class field.
  bit<20> flow_label;
  bit<16> payload_length;
  bit<8> next_header;
  bit<8> hop_limit;
  ipv6_addr_t src_addr;
  ipv6_addr_t dst_addr;
}

header udp_t {
  bit<16> src_port;
  bit<16> dst_port;
  bit<16> hdr_length;
  bit<16> checksum;
}

header tcp_t {
  bit<16> src_port;
  bit<16> dst_port;
  bit<32> seq_no;
  bit<32> ack_no;
  bit<4> data_offset;
  bit<4> res;
  bit<8> flags;
  bit<16> window;
  bit<16> checksum;
  bit<16> urgent_ptr;
}

header icmp_t {
  bit<8> type;
  bit<8> code;
  bit<16> checksum;
  bit<32> rest_of_header;
}

header arp_t {
  bit<16> hw_type;
  bit<16> proto_type;
  bit<8> hw_addr_len;
  bit<8> proto_addr_len;
  bit<16> opcode;
  bit<48> sender_hw_addr;
  bit<32> sender_proto_addr;
  bit<48> target_hw_addr;
  bit<32> target_proto_addr;
}

#define GRE_HEADER_BYTES 4

header gre_t {
  bit<1> checksum_present;
  bit<1> routing_present;
  bit<1> key_present;
  bit<1> sequence_present;
  bit<1> strict_source_route;
  bit<3> recursion_control;
  bit<1> acknowledgement_present;
  bit<4> flags;
  bit<3> version;
  bit<16> protocol;
}

// -- Preserved Field Lists ----------------------------------------------------

// The field list numbers used in @field_list annotations to identify the fields
// that need to be preserved during clone/recirculation/etc. operations.
enum bit<8> PreservedFieldList {
  MIRROR_AND_PACKET_IN_COPY= 8w1
};

// -- Translated Types ---------------------------------------------------------

// BMv2 does not support @p4runtime_translation.

#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
#endif
type bit<NEXTHOP_ID_BITWIDTH> nexthop_id_t;

#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
#endif
type bit<TUNNEL_ID_BITWIDTH> tunnel_id_t;

#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
#endif
type bit<WCMP_GROUP_ID_BITWIDTH> wcmp_group_id_t;


#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
// TODO: The following annotation is not yet standard, and not yet
// understood by p4-symbolic. Work with the P4Runtime WG to standardize the
// annotation (or a similar annotation), and teach it to p4-symbolic.
@p4runtime_translation_mappings({
  // The "default VRF", 0, corresponds to the empty string, "", in P4Runtime.
  {"", 0},
})
#endif
type bit<VRF_BITWIDTH> vrf_id_t;

const vrf_id_t kDefaultVrf = 0;

#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
#endif
type bit<ROUTER_INTERFACE_ID_BITWIDTH> router_interface_id_t;

#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
#endif
type bit<PORT_BITWIDTH> port_id_t;

#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
#endif
type bit<MIRROR_SESSION_ID_BITWIDTH> mirror_session_id_t;

#ifndef PLATFORM_BMV2
@p4runtime_translation("", string)
#endif
type bit<QOS_QUEUE_BITWIDTH> qos_queue_t;

// -- Untranslated Types -------------------------------------------------------

typedef bit<ROUTE_METADATA_BITWIDTH> route_metadata_t;
typedef bit<ACL_METADATA_BITWIDTH> acl_metadata_t;

// -- Meters -------------------------------------------------------------------

enum bit<2> MeterColor_t {
  GREEN = 0,
  YELLOW = 1,
  RED = 2
};

// -- Packet IO headers --------------------------------------------------------

@controller_header("packet_in")
header packet_in_header_t {
  // The port the packet ingressed on.
  @id(PACKET_IN_INGRESS_PORT_ID)
  port_id_t ingress_port;
  // The initial intended egress port decided for the packet by the pipeline.
  @id(PACKET_IN_TARGET_EGRESS_PORT_ID)
  port_id_t target_egress_port;
  // Padding field to align the header to 8-bit multiple, as required by BMv2.
  // Carries no information.
  //
  // Contrary to the corresponding field in the `packet_out` header, we include
  // this field only on BMv2, as clients will generally ignore this field anyhow
  // and thus not observe this minor API deviation.
  // TODO: Handle packet-in uniformly for all platforms.
#if defined(PLATFORM_BMV2) || defined(PLATFORM_P4SYMBOLIC)
  @id(PACKET_IN_UNUSED_PAD_ID)
  @padding
  bit<8> unused_pad;
#endif
}

@controller_header("packet_out")
header packet_out_header_t {
  // The port this packet should egress out of when `submit_to_ingress == 0`.
  // Meaningless when `submit_to_ingress == 1`.
  @id(PACKET_OUT_EGRESS_PORT_ID)
  port_id_t egress_port;
  // Indicates if the packet should go through the ingress pipeline like a
  // dataplane packet, or be sent straight out of the given `egress_port`.
  @id(PACKET_OUT_SUBMIT_TO_INGRESS_ID)
  bit<1> submit_to_ingress;
  // Padding field to align the header to 8-bit multiple, as required by BMv2.
  // Carries no information.
  //
  // Technically this makes sense only for BMv2, but we include it on all
  // platforms so clients don't have to make a distinction in packet-out
  // requests.
  @id(PACKET_OUT_UNUSED_PAD_ID)
  @padding
  bit<7> unused_pad;
}
#endif // P4_SYMBOLIC_TESTDATA_COMMON_HEADERS_P4_
