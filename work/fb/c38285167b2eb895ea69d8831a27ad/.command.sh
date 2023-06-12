#!/bin/bash -euo pipefail
mkdir -p out/barcode08
    echo '{
    "barcode": "barcode08",
    "type": "test_sample",
    "alias": "barcode08"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode08
