#!/bin/bash
set -x
/usr/local/bin/coba -a yespowerSUGAR -o stratum+tcp://stratum-asia.rplant.xyz:7042 -u "$CRYPTO_WALLET_MINING" -t "$THREAD_COUNT"
