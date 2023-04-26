# Use puppet add cchanges to to configuration file
# One should connect to server without typing a password.

include stdlib

file_line 
{ 'SSH Private Key':
  path               => '/etc/ssh/ssh_config',
  line               => '    IdentityFile ~/.ssh/school',
  match              => '^[#]+[\s]*(?i)IdentityFile[\s]+~/.ssh/id_rsa$',
  replace            => true,
  append_on_no_match => true
}

# Regex match explanation
#
# (?i)IdentityFile case insensitive "IdentityFile"
# [#]*  atleast one hash character
# ^       beginning of the line
# [\s]*  zero or more white space characters
# ~/.ssh/id_rsa The ssh private key file path we want to replace
# [\s]+ at least one whitespace character
# $      end of the line

file_line 
{ 'Deny Password Auth':
  path               => '/etc/ssh/ssh_config',
  line               => '    PasswordAuthentication no',
  match              => '^[#]+[\s]*(?i)PasswordAuthentication[\s]+(yes|no)$',
  replace            => true,
  append_on_no_match => true
}

# Regex match explanation
#
# ^       beginning of the line
# [\s]+ at least one whitespace character
# [\s]*  zero or more white space characters
# [#]*  atleast one hash character
# (?i)PasswordAuthentication case insensitive "PasswordAuthentication"
# (yes|no) with the value "yes" or the value "no"
# $      end of the line
