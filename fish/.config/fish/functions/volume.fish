# Defined in - @ line 1
function volume --wraps='pactl set-sink-volume 0' --description 'alias volume pactl set-sink-volume 0'
  pactl set-sink-volume 0 $argv;
end
