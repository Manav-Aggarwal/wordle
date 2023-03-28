CHAIN_ID=wordle
BASE_DIR="$HOME/.ln_wordle"

rm -rf $BASE_DIR

wordled --home "$BASE_DIR" init FullNode --chain-id $CHAIN_ID

cp -R "$HOME/.wordle/config/genesis.json" "$BASE_DIR/config/genesis.json"

DA_BLOCK_HEIGHT=63817
NAMESPACE_ID="8079254a684039c5"

wordled --home $BASE_DIR start --rollkit.light true --rollkit.da_layer celestia --rollkit.da_config='{"base_url":"http://138.197.230.80:26659","timeout":60000000000,"gas_limit":6000000}' --rollkit.namespace_id $NAMESPACE_ID --rollkit.da_start_height $DA_BLOCK_HEIGHT  --rollkit.experimental_insecure_fraud_proofs --rpc.laddr tcp://127.0.0.1:36664 --grpc.address 127.0.0.1:9385 --grpc-web.address 127.0.0.1:9386 --p2p.seeds 12D3KooWSaRT1YFEs1ofxuuTSBrRTC76AoqmnHFPVrYox8cThQeT@127.0.0.1:36656 --p2p.laddr "0.0.0.0:46656" --log_level debug