#!/bin/bash
export LD_LIBRARY_PATH=../third_party/lib:$LD_LIBRARY_PATH

cd ../model
sh download_model.sh
cd ../python

python -m demo.document_twe_keywords_demo ../model/news lda.conf news_twe_lda.model
