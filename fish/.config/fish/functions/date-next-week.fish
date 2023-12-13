function date-next-week --wraps='date +"%s" --date="today + 1 weeks"' --description 'alias date-next-week date +"%s" --date="today + 1 weeks"'
  date +"%s" --date="today + 1 weeks" $argv
        
end
