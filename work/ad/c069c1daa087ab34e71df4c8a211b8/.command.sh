#!/bin/bash -euo pipefail
mkdir -p out/barcode60
    echo '{
    "barcode": "barcode60",
    "type": "test_sample",
    "alias": "barcode60"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode60
