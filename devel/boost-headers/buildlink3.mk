# $NetBSD: buildlink3.mk,v 1.47 2021/01/01 08:19:01 ryoon Exp $

BUILDLINK_TREE+=	boost-headers

.if !defined(BOOST_HEADERS_BUILDLINK3_MK)
BOOST_HEADERS_BUILDLINK3_MK:=

# Use a dependency pattern that guarantees the proper ABI.
BUILDLINK_API_DEPENDS.boost-headers+=	boost-headers-1.75.*
BUILDLINK_DEPMETHOD.boost-headers?=	build
BUILDLINK_PKGSRCDIR.boost-headers?=	../../devel/boost-headers

PTHREAD_OPTS+=		require
PTHREAD_AUTO_VARS?=	yes
.include "../../mk/pthread.buildlink3.mk"
.endif # BOOST_HEADERS_BUILDLINK3_MK

BUILDLINK_TREE+=	-boost-headers
