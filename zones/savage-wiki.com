$TTL 300
$ORIGIN savage-wiki.com.

@		SOA ns1.miraheze.org. hostmaster.miraheze.org. (
		20180829000001	; serial
		7200		; refresh
		30M		; retry
		3D		; expire
		900		; ncache
)

; Wildcard services
@		DYNA	geoip!cp

; Name servers
@		NS	ns1.miraheze.org.
@		NS	ns2.miraheze.org.

; Mail exchangers

; CAA (issue: symantec.com, iodef: operations)
@		TYPE257 \# 19 0005697373756573796D616E7465632E636F6D
@		TYPE257 \# 37 0005696F6465666D61696C746F3A6F7065726174696F6E73406D69726168657A652E6F7267

; Servers

; Services
www		DYNA	geoip!cp

; load balancers

; Other
