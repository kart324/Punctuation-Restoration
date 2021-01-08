for FILE in ../data/transcripts/*.txt; do echo ${FILE##*/}; done
for FILE in ../data/transcripts/*.txt; do python3 inference.py --pretrained-model=roberta-large --weight-path=roberta-large-en.pt --language=en --in-file=../data/transcripts/${FILE##*/} --out-file=../data/output/${FILE##*/}; done
