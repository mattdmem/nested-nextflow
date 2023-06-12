#!/bin/bash -euo pipefail
mkdir -p out/barcode52
    echo '{
    "barcode": "barcode52",
    "type": "test_sample",
    "alias": "barcode52"
}' > metamap.json
    mv metamap.json seqs/seqs.fastq.gz stats/fastcat_stats out/barcode52
