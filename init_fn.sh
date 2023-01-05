CHAIN_ID=wordle
BASE_DIR="$HOME/.fn_wordle"

rm -rf $BASE_DIR

wordled --home "$BASE_DIR" init FullNode --chain-id $CHAIN_ID

cp -R "$HOME/.wordle/config/genesis.json" "$BASE_DIR/config/genesis.json"

DA_BLOCK_HEIGHT=1455
NAMESPACE_ID="8079254a684039c5"

wordled --home $BASE_DIR start --rollmint.da_layer celestia --rollmint.da_config='{"base_url":"http://138.197.230.80:26659","timeout":60000000000,"gas_limit":6000000}' --rollmint.namespace_id $NAMESPACE_ID --rollmint.da_start_height $DA_BLOCK_HEIGHT  --rollmint.experimental_insecure_fraud_proofs --rpc.laddr tcp://127.0.0.1:36657 --grpc.address 127.0.0.1:9390 --grpc-web.address 127.0.0.1:9391 -p2p.seeds "12D3KooWFZqsgc9NsLCh45yGspEd4KxFJVYui12uqBZszknEikiJ@127.0.0.1:26656" --p2p.laddr "0.0.0.0:36656"