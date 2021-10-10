node /gpd/ {
  include software
  include masterless
  include configuration
}

node /desktop/ {
  include software
  include masterless
  include configuration
  include distcc
}

node /thinkpad/ {
  include masterless
  include software
  include configuration
  include distcc
  include sound
}

node /mediaserver/ {
  include masterless
  include software
  include mediaserver
}
