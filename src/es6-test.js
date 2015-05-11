console.log('es6-test.js ')

class Point {
	constructor(x=0,y=0) {
		this.x = x
		this.y = y
	}
}
console.log(new Point())
console.log(new Point(10,20))

var counter = 0;
for(let i = 0; i < 3; i += 1) {
  for(let i = 0; i < 3; i += 1) {
    setTimeout(function(){
    	counter++
    	console.log(counter)
    },1000)
  }
}