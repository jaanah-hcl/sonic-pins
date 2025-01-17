; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let ((?x149 (ite (and $x85 $x96) 0 (ite (and $x85 $x102) 3 (ite (and $x85 $x108) 2 (- 1))))))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x157 (ite $x109 1 ?x149)))
 (let (($x123 (and $x85 (and (and (and (not $x91) (not $x96)) (not $x102)) (not $x108)))))
 (let (($x120 (and (and $x85 (and (and (not $x91) (not $x96)) (not $x102))) $x108)))
 (let (($x116 (and (and $x85 (and (not $x91) (not $x96))) $x102)))
 (let ((?x142 (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) (ite $x123 (_ bv511 9) standard_metadata.egress_spec)))))
 (let (($x112 (and (and $x85 (not $x91)) $x96)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) ?x142))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) $x85) (= ?x157 (- 1)))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let ((?x149 (ite (and $x85 $x96) 0 (ite (and $x85 $x102) 3 (ite (and $x85 $x108) 2 (- 1))))))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x157 (ite $x109 1 ?x149)))
 (let (($x123 (and $x85 (and (and (and (not $x91) (not $x96)) (not $x102)) (not $x108)))))
 (let (($x120 (and (and $x85 (and (and (not $x91) (not $x96)) (not $x102))) $x108)))
 (let (($x116 (and (and $x85 (and (not $x91) (not $x96))) $x102)))
 (let ((?x142 (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) (ite $x123 (_ bv511 9) standard_metadata.egress_spec)))))
 (let (($x112 (and (and $x85 (not $x91)) $x96)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) ?x142))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (let (($x318 (and (not $x52) $x85)))
 (and $x318 (= ?x157 0)))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let ((?x149 (ite (and $x85 $x96) 0 (ite (and $x85 $x102) 3 (ite (and $x85 $x108) 2 (- 1))))))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x157 (ite $x109 1 ?x149)))
 (let (($x123 (and $x85 (and (and (and (not $x91) (not $x96)) (not $x102)) (not $x108)))))
 (let (($x120 (and (and $x85 (and (and (not $x91) (not $x96)) (not $x102))) $x108)))
 (let (($x116 (and (and $x85 (and (not $x91) (not $x96))) $x102)))
 (let ((?x142 (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) (ite $x123 (_ bv511 9) standard_metadata.egress_spec)))))
 (let (($x112 (and (and $x85 (not $x91)) $x96)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) ?x142))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) $x85) (= ?x157 1))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let ((?x149 (ite (and $x85 $x96) 0 (ite (and $x85 $x102) 3 (ite (and $x85 $x108) 2 (- 1))))))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x157 (ite $x109 1 ?x149)))
 (let (($x123 (and $x85 (and (and (and (not $x91) (not $x96)) (not $x102)) (not $x108)))))
 (let (($x120 (and (and $x85 (and (and (not $x91) (not $x96)) (not $x102))) $x108)))
 (let (($x116 (and (and $x85 (and (not $x91) (not $x96))) $x102)))
 (let ((?x142 (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) (ite $x123 (_ bv511 9) standard_metadata.egress_spec)))))
 (let (($x112 (and (and $x85 (not $x91)) $x96)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) ?x142))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) $x85) (= ?x157 2))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let ((?x149 (ite (and $x85 $x96) 0 (ite (and $x85 $x102) 3 (ite (and $x85 $x108) 2 (- 1))))))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x157 (ite $x109 1 ?x149)))
 (let (($x123 (and $x85 (and (and (and (not $x91) (not $x96)) (not $x102)) (not $x108)))))
 (let (($x120 (and (and $x85 (and (and (not $x91) (not $x96)) (not $x102))) $x108)))
 (let (($x116 (and (and $x85 (and (not $x91) (not $x96))) $x102)))
 (let ((?x142 (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) (ite $x123 (_ bv511 9) standard_metadata.egress_spec)))))
 (let (($x112 (and (and $x85 (not $x91)) $x96)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) ?x142))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) $x85) (= ?x157 3))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x79 (ite $x65 0 (ite (and $x53 $x64) 1 (- 1)))))
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x68 (and (and $x53 (not $x59)) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) $x53) (= ?x79 (- 1))))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x79 (ite $x65 0 (ite (and $x53 $x64) 1 (- 1)))))
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x68 (and (and $x53 (not $x59)) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) $x53) (= ?x79 0)))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (let (($x86 (= standard_metadata.ingress_port (_ bv1 9))))
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x79 (ite $x65 0 (ite (and $x53 $x64) 1 (- 1)))))
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x68 (and (and $x53 (not $x59)) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) $x53) (= ?x79 1)))))))))))))))))))))))))))))))
(check-sat)

; 
(set-info :status unknown)
(declare-fun standard_metadata.ingress_port () (_ BitVec 9))
(declare-fun standard_metadata.egress_spec () (_ BitVec 9))
(declare-fun scalars.local_metadata_t.vrf () (_ BitVec 10))
(declare-fun ipv4.srcAddr () (_ BitVec 32))
(declare-fun ipv4.$valid$ () Bool)
(declare-fun ipv4.dstAddr () (_ BitVec 32))
(declare-fun scalars.local_metadata_t.vrf_is_valid () (_ BitVec 1))
(assert
 (and (and (distinct standard_metadata.ingress_port (_ bv511 9)) true) (or (or false (= standard_metadata.ingress_port (_ bv0 9))) $x86))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (or $x52 (or (or false (= ?x158 (_ bv0 9))) (= ?x158 (_ bv1 9))))))))))))))))))))))))))))))))
(assert
 (let ((?x50 (concat (_ bv0 9) (_ bv0 1))))
 (let (($x64 (and true (= (bvand ipv4.srcAddr (_ bv555813129 32)) (_ bv555810816 32)))))
 (let (($x53 (and true ipv4.$valid$)))
 (let (($x68 (and (and $x53 (not (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32))))) $x64)))
 (let ((?x80 (concat (_ bv0 9) (_ bv1 1))))
 (let (($x59 (and true (= (bvand ipv4.srcAddr (_ bv153159945 32)) (_ bv2162944 32)))))
 (let (($x65 (and $x53 $x59)))
 (let ((?x81 (ite $x65 ?x80 (ite $x68 ?x50 (ite true ?x50 scalars.local_metadata_t.vrf)))))
 (let (($x90 (= ?x81 ?x50)))
 (let (($x108 (and (and true (= ((_ extract 31 24) ipv4.dstAddr) ((_ extract 31 24) (_ bv167772160 32)))) $x90)))
 (let (($x102 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv336855040 32)))) (= ?x81 ?x80))))
 (let (($x96 (and (and true (= ((_ extract 31 16) ipv4.dstAddr) ((_ extract 31 16) (_ bv168427520 32)))) $x90)))
 (let (($x91 (and (and true (= ipv4.dstAddr (_ bv168427520 32))) $x90)))
 (let (($x110 (not $x91)))
 (let (($x114 (and $x110 (not $x96))))
 (let (($x118 (and $x114 (not $x102))))
 (let ((?x47 (ite false (_ bv1 1) (_ bv0 1))))
 (let ((?x76 (ite true (_ bv1 1) (_ bv0 1))))
 (let ((?x82 (ite $x65 ?x76 (ite $x68 ?x76 (ite true ?x47 scalars.local_metadata_t.vrf_is_valid)))))
 (let (($x85 (and $x53 (bvuge ?x82 (_ bv1 1)))))
 (let ((?x125 (ite (and $x85 (and $x118 (not $x108))) (_ bv511 9) standard_metadata.egress_spec)))
 (let (($x120 (and (and $x85 $x118) $x108)))
 (let (($x116 (and (and $x85 $x114) $x102)))
 (let (($x112 (and (and $x85 $x110) $x96)))
 (let (($x109 (and $x85 $x91)))
 (let ((?x158 (ite $x109 (_ bv1 9) (ite $x112 (_ bv0 9) (ite $x116 (_ bv1 9) (ite $x120 (_ bv1 9) ?x125))))))
 (let (($x52 (= ?x158 (_ bv511 9))))
 (and (and (not $x52) true) (= (- 1) (- 1)))))))))))))))))))))))))))))))
(check-sat)
