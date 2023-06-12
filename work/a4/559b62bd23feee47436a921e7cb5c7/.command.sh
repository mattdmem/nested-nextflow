#!/bin/bash -euo pipefail
mkdir -p out/barcode36
    echo '{
    "barcode": "barcode36",
    "type": "test_sample",
    "alias": "barcode36"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode36
