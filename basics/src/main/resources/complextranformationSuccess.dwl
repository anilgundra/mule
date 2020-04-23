%dw 2.0
output application/json
//output application/xml
var myproducts = payload map {
	pid:$.productId,
	brandName:$.brandName,
	originalPrice:$.offer.offerPrice
}

var filteredProducts = (myproducts filter $.brandName == attributes.queryParams.bname)
var object1 = {one:1,two:2}

var object2 = [
	{one:1,two:2},
	{one:1,two:2,three:3}
]

---
// {} --> is an object
// [] --> is an array
// () --> for evaluate, if it is array then it will be merged
//object1
/* 
{
	(object1)
}
*/

//object2

/* {(object2)
 }
*/

//myproducts

/*
{
	(myproducts)
}
 */

products:{
	product:
myproducts orderBy  $.originalPrice
}

