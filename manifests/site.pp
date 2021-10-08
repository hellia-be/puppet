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
