CHAIN_ID=wordle
BASE_DIR="$HOME/.fn_worlde"

rm -rf $BASE_DIR

wordled --home "$BASE_DIR" init FullNode --chain-id $CHAIN_ID

cp -R "$HOME/.wordle/config/genesis.json" "$BASE_DIR/config/genesis.json"

DA_BLOCK_HEIGHT=80284
NAMESPACE_ID="7079254a587038c5"

wordled --home "$BASE_DIR" start --rollmint.da_layer celestia --rollmint.da_config='{"base_url":"http://localhost:26659","timeout":60000000000,"gas_limit":6000000}' --rollmint.namespace_id $NAMESPACE_ID --rollmint.da_start_height $DA_BLOCK_HEIGHT  --rollmint.experimental_insecure_fraud_proofs true --rpc.laddr tcp://127.0.0.1:36657 --grpc.address 127.0.0.1:9390 --grpc-web.address 127.0.0.1:9391