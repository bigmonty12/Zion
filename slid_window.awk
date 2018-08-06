BEGIN {
	N=5
}
{
	n[NR]=$1
}
NR>=N {
	x=0
	delete n[NR-N]
	for(i in n)
		x+=n[i]
	print x/N
}
