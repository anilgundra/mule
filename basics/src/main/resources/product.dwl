%dw 2.0
output application/xml
---
product @(pid:payload.productId):{
	
	pname: payload.name,
	images:payload.images[1]
}