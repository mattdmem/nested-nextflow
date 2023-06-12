#!/bin/bash -euo pipefail
mkdir -p out/barcode67
    echo '{
    "barcode": "barcode67",
    "type": "test_sample",
    "alias": "barcode67"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode67
