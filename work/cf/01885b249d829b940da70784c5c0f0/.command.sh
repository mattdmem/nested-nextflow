#!/bin/bash -euo pipefail
echo '[
    {
        "barcode": "barcode47",
        "type": "test_sample",
        "alias": "barcode47"
    },
    {
        "barcode": "barcode96",
        "type": "test_sample",
        "alias": "barcode96"
    },
    {
        "barcode": "barcode24",
        "type": "test_sample",
        "alias": "barcode24"
    },
    {
        "barcode": "barcode48",
        "type": "test_sample",
        "alias": "barcode48"
    },
    {
        "barcode": "barcode60",
        "type": "test_sample",
        "alias": "barcode60"
    },
    {
        "barcode": "barcode93",
        "type": "test_sample",
        "alias": "barcode93"
    },
    {
        "barcode": "barcode67",
        "type": "test_sample",
        "alias": "barcode67"
    },
    {
        "barcode": "barcode44",
        "type": "test_sample",
        "alias": "barcode44"
    },
    {
        "barcode": "barcode08",
        "type": "test_sample",
        "alias": "barcode08"
    },
    {
        "barcode": "barcode52",
        "type": "test_sample",
        "alias": "barcode52"
    },
    {
        "barcode": "barcode99",
        "type": "test_sample",
        "alias": "barcode99"
    },
    {
        "barcode": "barcode36",
        "type": "test_sample",
        "alias": "barcode36"
    },
    {
        "barcode": "barcode49",
        "type": "test_sample",
        "alias": "barcode49"
    }
]' > metadata.json
    workflow-glue report wf-template-report.html         --versions versions         --stats per-read-stats.tsv         --params params.json         --metadata metadata.json