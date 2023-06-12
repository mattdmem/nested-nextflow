#!/bin/bash -euo pipefail
mkdir -p out/barcode49
    echo '{
    "barcode": "barcode49",
    "type": "test_sample",
    "alias": "barcode49"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode49
