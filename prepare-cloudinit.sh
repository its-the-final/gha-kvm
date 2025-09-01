
(mkdir cinit;
cd cinit;
cat << EOF > user-data
#cloud-config
no_ssh_fingerprints: true
users:
  - name: alpine
    groups: users, wheel
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    ssh_authorized_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAEAQC9k8LyZSnhpzWi+ku51dHst6CM/A0P28KPY2wW0o69oO29i94zYYoR/0HuScHsXqQYCDU0ckFwd4xAiPWbvrHgnQIrm6mJt6wFo9Chi4AC+MLm1NhHr8JlKrLyIlJBH/wCHx+AU/vnO5d9s7i3YgLODnZETy5OaB11eEkFY9hHiPGdWpyb/AvMY/mGvAvQeX+KynnqNkb/SGOckPhOwS3QHF6vrPO3DlWHRwLlVowIwMfQUARdNQ1JK6En9vlJ47Xn4THxgA5NDBX5+b6jIuXZnVtlfvjXaDHMEUCcWc8CXknlKDhTdtbKlIutwn9WOuZl+qXoNU4q1hMyWl0q3ms8e1c2OK17y4SAV0lKZgmY/fDbaFVaucDo0B9sm5I5KKEODkZY1Yp0Ez3StMyt3BsRqwToVb939z+wpZimmPXaKgC2ysN0NUDyC81E2fMToaFpcwtigYk6XudqzClzOVXOoKlS/nTM7S1Z8uNKYp7JTPipcW1cvSo9cTueB2X9TpCYauxI99nSjpa1/j8vJ+PEVJOMcA3YH1s5ogDALnNqSEpTejXpU523kwf9IxbpB5RJ0KYzhRjWwLtc6WuzQghBq1+lWbYG3rz9p33MjUsmzyTztkDdwFIkKvM6VW+TFXXeR1rS9PWJDA+BXgzwaySyi44MwfwNPBFbW0HBhKuIYnNs0ODnKHptORV8wjCW8+MrJMRggObC+9gCFHk1vFqPWhig74EWXX75ITk+U+cvpjqoRtGRhpM+ExTAnHw3OEwdEUlxCuioPo6eN6foM/SZ36pE3jm6Ifa9eqYjthoTrvW+RQ99KAEqQwlR5g7nqLA8FA/ST14JTlEoLIojjz9DytlBuZAmgjhh5K0xwHoxqUnNicJ8KnxyYOZ36l5lHsWFRpVtNVqmUr71JxdZe6x+F8zbW4akcyRGSHNJLRCheQ5rftXkHkqLu8qMckxS2NxwXZ/3jiWzKYCdiffwZvBJ02PUC+FE2vOjcSLX0pSGPZo+pVPa0oFwYArQ1xgTHQl5RdM+ZfTQNIUiMAbHRvDw0bsiDFkTNYQnjDTFrrBser+uBgvce3O+uQaWycrRG9k06EIDEwkWfJfrfvyqgcgTc0hw772xfZvl+OeYTn5/KFF62t1b9S4vo5A3Fg3QcDhuShY0l4iW6eMLakcECVBSmqapHOHqVHpTBS+eqyb6aNkYKZHMhtP57GiKulE2RfKcZyAwsRzZWenIG26oK6fVWLVH2PpZS7FobvSiFdhIMw8FgScBxDP54M4vv0cUT6wJtqjw5Pi513UeKWRoCi/qAglXV6Bt/ftwpm+wX4jCHSyOFF5vX14DyLk07vi3OEVFoCrC+fVSLyY5uEb8qz6P yourkey@yourhost
      - SSHKEY
  - name: timmy
    groups: users, wheel
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    ssh_authorized_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAEAQC9k8LyZSnhpzWi+ku51dHst6CM/A0P28KPY2wW0o69oO29i94zYYoR/0HuScHsXqQYCDU0ckFwd4xAiPWbvrHgnQIrm6mJt6wFo9Chi4AC+MLm1NhHr8JlKrLyIlJBH/wCHx+AU/vnO5d9s7i3YgLODnZETy5OaB11eEkFY9hHiPGdWpyb/AvMY/mGvAvQeX+KynnqNkb/SGOckPhOwS3QHF6vrPO3DlWHRwLlVowIwMfQUARdNQ1JK6En9vlJ47Xn4THxgA5NDBX5+b6jIuXZnVtlfvjXaDHMEUCcWc8CXknlKDhTdtbKlIutwn9WOuZl+qXoNU4q1hMyWl0q3ms8e1c2OK17y4SAV0lKZgmY/fDbaFVaucDo0B9sm5I5KKEODkZY1Yp0Ez3StMyt3BsRqwToVb939z+wpZimmPXaKgC2ysN0NUDyC81E2fMToaFpcwtigYk6XudqzClzOVXOoKlS/nTM7S1Z8uNKYp7JTPipcW1cvSo9cTueB2X9TpCYauxI99nSjpa1/j8vJ+PEVJOMcA3YH1s5ogDALnNqSEpTejXpU523kwf9IxbpB5RJ0KYzhRjWwLtc6WuzQghBq1+lWbYG3rz9p33MjUsmzyTztkDdwFIkKvM6VW+TFXXeR1rS9PWJDA+BXgzwaySyi44MwfwNPBFbW0HBhKuIYnNs0ODnKHptORV8wjCW8+MrJMRggObC+9gCFHk1vFqPWhig74EWXX75ITk+U+cvpjqoRtGRhpM+ExTAnHw3OEwdEUlxCuioPo6eN6foM/SZ36pE3jm6Ifa9eqYjthoTrvW+RQ99KAEqQwlR5g7nqLA8FA/ST14JTlEoLIojjz9DytlBuZAmgjhh5K0xwHoxqUnNicJ8KnxyYOZ36l5lHsWFRpVtNVqmUr71JxdZe6x+F8zbW4akcyRGSHNJLRCheQ5rftXkHkqLu8qMckxS2NxwXZ/3jiWzKYCdiffwZvBJ02PUC+FE2vOjcSLX0pSGPZo+pVPa0oFwYArQ1xgTHQl5RdM+ZfTQNIUiMAbHRvDw0bsiDFkTNYQnjDTFrrBser+uBgvce3O+uQaWycrRG9k06EIDEwkWfJfrfvyqgcgTc0hw772xfZvl+OeYTn5/KFF62t1b9S4vo5A3Fg3QcDhuShY0l4iW6eMLakcECVBSmqapHOHqVHpTBS+eqyb6aNkYKZHMhtP57GiKulE2RfKcZyAwsRzZWenIG26oK6fVWLVH2PpZS7FobvSiFdhIMw8FgScBxDP54M4vv0cUT6wJtqjw5Pi513UeKWRoCi/qAglXV6Bt/ftwpm+wX4jCHSyOFF5vX14DyLk07vi3OEVFoCrC+fVSLyY5uEb8qz6P yourkey@yourhost
      - SSHKEY
ssh:
  emit_keys_to_console: false
ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAEAQC9k8LyZSnhpzWi+ku51dHst6CM/A0P28KPY2wW0o69oO29i94zYYoR/0HuScHsXqQYCDU0ckFwd4xAiPWbvrHgnQIrm6mJt6wFo9Chi4AC+MLm1NhHr8JlKrLyIlJBH/wCHx+AU/vnO5d9s7i3YgLODnZETy5OaB11eEkFY9hHiPGdWpyb/AvMY/mGvAvQeX+KynnqNkb/SGOckPhOwS3QHF6vrPO3DlWHRwLlVowIwMfQUARdNQ1JK6En9vlJ47Xn4THxgA5NDBX5+b6jIuXZnVtlfvjXaDHMEUCcWc8CXknlKDhTdtbKlIutwn9WOuZl+qXoNU4q1hMyWl0q3ms8e1c2OK17y4SAV0lKZgmY/fDbaFVaucDo0B9sm5I5KKEODkZY1Yp0Ez3StMyt3BsRqwToVb939z+wpZimmPXaKgC2ysN0NUDyC81E2fMToaFpcwtigYk6XudqzClzOVXOoKlS/nTM7S1Z8uNKYp7JTPipcW1cvSo9cTueB2X9TpCYauxI99nSjpa1/j8vJ+PEVJOMcA3YH1s5ogDALnNqSEpTejXpU523kwf9IxbpB5RJ0KYzhRjWwLtc6WuzQghBq1+lWbYG3rz9p33MjUsmzyTztkDdwFIkKvM6VW+TFXXeR1rS9PWJDA+BXgzwaySyi44MwfwNPBFbW0HBhKuIYnNs0ODnKHptORV8wjCW8+MrJMRggObC+9gCFHk1vFqPWhig74EWXX75ITk+U+cvpjqoRtGRhpM+ExTAnHw3OEwdEUlxCuioPo6eN6foM/SZ36pE3jm6Ifa9eqYjthoTrvW+RQ99KAEqQwlR5g7nqLA8FA/ST14JTlEoLIojjz9DytlBuZAmgjhh5K0xwHoxqUnNicJ8KnxyYOZ36l5lHsWFRpVtNVqmUr71JxdZe6x+F8zbW4akcyRGSHNJLRCheQ5rftXkHkqLu8qMckxS2NxwXZ/3jiWzKYCdiffwZvBJ02PUC+FE2vOjcSLX0pSGPZo+pVPa0oFwYArQ1xgTHQl5RdM+ZfTQNIUiMAbHRvDw0bsiDFkTNYQnjDTFrrBser+uBgvce3O+uQaWycrRG9k06EIDEwkWfJfrfvyqgcgTc0hw772xfZvl+OeYTn5/KFF62t1b9S4vo5A3Fg3QcDhuShY0l4iW6eMLakcECVBSmqapHOHqVHpTBS+eqyb6aNkYKZHMhtP57GiKulE2RfKcZyAwsRzZWenIG26oK6fVWLVH2PpZS7FobvSiFdhIMw8FgScBxDP54M4vv0cUT6wJtqjw5Pi513UeKWRoCi/qAglXV6Bt/ftwpm+wX4jCHSyOFF5vX14DyLk07vi3OEVFoCrC+fVSLyY5uEb8qz6P yourkey@yourhost
  - SSHKEY
password: myuserpassfortesting11
chpasswd:
  expire: false
  users:
  - {name: timmy, password: password111, type: text}
runcmd:
  - echo 'running cloud-init' 
  - ash -c "(echo nameserver 4.2.2.4;echo nameserver 1.1.1.1 ) > /etc/resolv.conf" 
  - [ sh, -c, "apk add tor tsocks screen curl socat bash sudo || ( sleep 10 ; apk add tor tsocks screen curl socat bash sudo)" ]
  - echo 'First command executed successfully!' >> /run/testing.txt
EOF
RANDGROUP="qemukvm-"$RANDOM$RANDOM"-group"
test -e ../customscript || ( 
                          echo 'bash -c "while(true);do date; tsocks ssh qemukvmdefaultgroup@ssh-j.com -N -R qemukvmtunhost:22:localhost:22 &>> /dev/ttyS0  ;sleep 1;done;" &' |sed 's/qemukvmdefaultgroup/'"$RANDGROUP"'/'g >> ../setupscript ; 
                          test -e /tmp/myip && ( grep "^./wstunnel" ../TMP_SCRIPT && echo "setup wston" && (
                                                 ( echo;
                                                   echo "wget -O- -c https://github.com/erebe/wstunnel/releases/download/v10.4.4/wstunnel_10.4.4_linux_amd64.tar.gz|tar xvz wstunnel"
                                                   echo "chmod +x wstunnel"
                                                   echo "mv wstunnel /usr/bin"
                                                   echo '-/usr/bin/wstunnel client -R 'tcp://2222:127.0.0.1:22'  ws://'$(cat /tmp/myip)':4334/ --log-lvl INFO --dns-resolver-prefer-ipv4 &' 
                                                 ) >> ../setupscript
 )
)
                          echo "ACCESS INNER THINGY AT "$(grep ssh-j.com  ../setupscript  |cut -d" " -f7-  )"  ($RANDGROUP) ")
test -e ../customscript || echo '  - bash -c  "echo '$(base64 -w 0        ../setupscript)'|base64 -d |bash 2>&1 |tee /dev/shm/setup.log"' >> user-data
test -e ../customscript && echo '  - bash -c  "echo '$(base64 -w 0       ../customscript)'|base64 -d |bash 2>&1 |tee /dev/shm/setup.log"' >> user-data
cat << EOF >> user-data
  - [ sh, -c, "echo 'Second command executed successfully!' >> /run/testing.txt" ]
  - [ sh, -c, "echo 'First command executed successfully!' >> /dev/ttyS0 || true" ]
EOF
cat << EOF > meta-data
instance-id: someid/somehostname

EOF

touch vendor-data
 ) 

