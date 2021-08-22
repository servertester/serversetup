#vidersende alt nyt trafik fra interne netværk til det eksterne
iptables -A FORWARD -o eth0 -i eth1 -s 172.24.16.2/20 -m conntrack --ctstate NEW -j ACCEPT

#vidersender trafk mellem established og related connections
iptables -A FORWARD -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
#Flusher alle postrouting regler for nat
iptables -t nat -F POSTROUTING

#Masquerader alt trafik fra det interne netværk
iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE

#gemmer konfigurationerne i en fil der bliver sat på til opstart
sudo su -c 'iptables-save > /etc/iptables/rules.v4'
