gen:
	@kubeseal < secrets.yml > sealed-secrets.yml --format=yaml --cert sealed-secrets.pem

fetch:
	@kubeseal --fetch-cert --controller-namespace=sealed-secrets > sealed-secrets.pem 

