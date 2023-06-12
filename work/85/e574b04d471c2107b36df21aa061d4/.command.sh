#!/bin/bash -euo pipefail
mkdir -p out/barcode93
    echo '{
    "barcode": "barcode93",
    "type": "test_sample",
    "alias": "barcode93"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode93
