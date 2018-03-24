function q11(hidden_units)
	a4_init;
	A = dec2bin(0:2^hidden_units-1,hidden_units)-'0';
	C = A * small_test_rbm_w;
	D =exp(C) + 1;
	E = prod(D,2);
	log(sum(E))
end