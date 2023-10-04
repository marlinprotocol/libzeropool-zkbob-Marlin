#! /bin/bash
echo "==========CASE 1=========="
echo "Correct params and Correct inputs"

cargo run --release prove
cargo run --release verify

echo "==========CASE 2=========="
echo "Correct params and Incorrect inputs"

cargo run --release prove-changed-inputs
cargo run --release verify-changed-inputs

echo "==========CASE 3=========="
echo "Incorrect params and Correct inputs"

cargo run --release prove-changed-params
cargo run --release verify-changed-params

echo "==========CASE 4=========="
echo "Incorrect params and Incorrect inputs"

cargo run --release prove-changed-params-inputs
cargo run --release verify-changed-params-inputs