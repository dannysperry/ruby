// every 3rd fizz, every 5th buzz every 15th fizzbuzz

for(i=0;i<101;i++){
	switch(i) {
		case (i%3==0):
			i = "fizz";
		case (i%5==0):
			i = "buzz";
		case (i%3==0) && (i%5==0):
			i = "fizzbuzz";
		default:
			i=i;
	}
}