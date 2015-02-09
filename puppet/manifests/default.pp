Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

notify { 'start provisioning apache': }

if $operatingsystem == 'Ubuntu' {
  notice('Cool! I like you')
}
elsif $operatingsystem == 'Windows' {
  warning('What the hell are you doing...')
}
else {
  notice("I dont know what to think about ${operatingsystem}. Its a ${osfamily}, isnt it?")
}

include apache
include system-update

# print a debug message
notify { 'provisioning is done!': }
