#!/bin/bash -euo pipefail
mkdir -p out/barcode99
    echo '{
    "barcode": "barcode99",
    "type": "test_sample",
    "alias": "barcode99"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode99
