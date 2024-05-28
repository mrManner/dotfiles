# Defined in - @ line 1
function get-intervention --description 'get Enode intervention by ID'
  curl -s "https://enode-api.production.enode.io/interventions/"$argv | jq .
end
