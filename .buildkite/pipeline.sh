#/usr/bin/env bash

cat <<EOF | tee /dev/tty | buildkite-agent pipeline upload
steps:
  - name: "test"
    command: "cargo test"
    timeout_in_minutes: 5
    agents:
      queue: "default"
EOF
