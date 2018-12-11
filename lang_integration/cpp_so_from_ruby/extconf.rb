require 'mkmf'
system('swig -c++ -ruby code.i') or abort
create_makefile('code')
