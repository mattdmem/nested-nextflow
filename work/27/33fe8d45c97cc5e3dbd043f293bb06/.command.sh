#!/bin/bash -euo pipefail
mkdir -p out/barcode96
    echo '{
    "barcode": "barcode96",
    "type": "test_sample",
    "alias": "barcode96"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode96
