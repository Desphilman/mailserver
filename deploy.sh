ssh root@desphilman.com 'service dovecot stop'
ssh root@desphilman.com 'service postfix stop'

scp -r ./dovecot root@desphilman.com:/etc
scp -r ./postfix root@desphilman.com:/etc

ssh root@desphilman.com 'service dovecot start'
ssh root@desphilman.com 'service postfix start'