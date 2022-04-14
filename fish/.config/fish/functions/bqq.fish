function bqq --wraps='bq query  --use_legacy_sql=false --location=EU' --description 'alias bqq bq query  --use_legacy_sql=false --location=EU'
  bq query  --use_legacy_sql=false --location=EU $argv; 
end
