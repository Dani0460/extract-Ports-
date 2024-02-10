#bin/bash/                                                                                      
                                                                                                
puertos=$(cat openports|grep -o "[0-9]*/open" | grep -o "[0-9]*" | tr '\n' ',' | sed 's/,$//')  
ips=$(cat openports|grep -o "Host: [0-9.]* " | tail -1 | sed "s/ //g")

echo "$ips: $puertos"
echo "Puertos copiados a la clipboard"
echo -n "$puertos"|xclip -sel clip
