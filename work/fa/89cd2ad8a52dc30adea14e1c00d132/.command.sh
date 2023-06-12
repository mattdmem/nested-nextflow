#!/bin/bash -euo pipefail
mkdir -p out/barcode48
    echo '{
    "barcode": "barcode48",
    "type": "test_sample",
    "alias": "barcode48"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode48
