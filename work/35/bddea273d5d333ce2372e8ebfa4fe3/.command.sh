#!/bin/bash -euo pipefail
mkdir -p out/barcode24
    echo '{
    "barcode": "barcode24",
    "type": "test_sample",
    "alias": "barcode24"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode24
