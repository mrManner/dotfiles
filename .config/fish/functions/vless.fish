# Defined in - @ line 1
function vless --wraps='vim -u ~/.vimlessrc' --description 'alias vless vim -u ~/.vimlessrc'
  vim -u ~/.vimlessrc $argv;
end
