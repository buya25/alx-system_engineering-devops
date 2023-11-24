# Configure ssh client file

# Ensure the private key is used for authentication
file_line { 'Use private key for authentication':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^#?IdentityFile',
}

# Disable password authentication
file_line { 'Turn off password authentication':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match   => '^#?PasswordAuthentication',
}
2-ssh_config
