CHAIN_ID=wordle
BASE_DIR="$HOME/.fp_watcher_wordle"

rm -rf $BASE_DIR

wordled --home "$BASE_DIR" init FullNode --chain-id $CHAIN_ID

cp -R "$HOME/.wordle/config/genesis.json" "$BASE_DIR/config/genesis.json"

DA_BLOCK_HEIGHT=91304
NAMESPACE_ID="7079254a584038c5"

wordled --home $BASE_DIR start --rollmint.da_layer celestia --rollmint.da_config='{"base_url":"http://localhost:26659","timeout":60000000000,"gas_limit":6000000}' --rollmint.namespace_id $NAMESPACE_ID --rollmint.da_start_height $DA_BLOCK_HEIGHT  --rollmint.experimental_insecure_fraud_proofs --rollmint.fraud_proof_watcher --rpc.laddr tcp://127.0.0.1:36654 --grpc.address 127.0.0.1:9385 --grpc-web.address 127.0.0.1:9386

#12D3K....KwE1@127.0.0.1:26656