%dw 2.0
output application/xml
fun helloUpper(charStr) = upper(charStr)
//fun phoneFormat(str: charStr2) = "("++ str[0 to 2] ++")" 
fun phoneFormat(str1: String) =  "(" ++ str1[0 to 2] ++ ") " ++ "- " ++ str1[3 to 5] ++ "-" ++ str1[6 to 9]
fun checkString(charStr1) = charStr1 match {
	case is String -> upper(charStr1)
	case is Number -> '0212333' as Number
	else -> lower(charStr1)
}
---
product @(pid:payload.productId):{
	
	pname: payload.name,
	myString:helloUpper("HelloWorld!.."),
	CheckString:checkString("jjkkaET"),
	phone:phoneFormat(1234567890),
	images:payload.images[1]
}