ssh -p 6222 root@desphilman.com 'service dovecot stop'
ssh -p 6222 root@desphilman.com 'service postfix stop'

scp -P 6222 -r ./dovecot root@desphilman.com:/etc
scp -P 6222 -r ./postfix root@desphilman.com:/etc

ssh -p 6222 root@desphilman.com 'service dovecot start'
ssh -p 6222 root@desphilman.com 'service postfix start'