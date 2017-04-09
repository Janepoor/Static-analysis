
# This makefile is for the ngram program for generating the outputfile
# The input parameter is python ngram.py <length of ngram> <length of slide>  <input_file> <output_file>
# The naming format for output is <prognum_n num_ s_num>
# For example pro1_n2_s1.txt represent the output for n=2 and s=1

ngrams:

	python ngrams.py 1 1 prog1 prog1_n1_s1.txt
	python ngrams.py 1 1 prog2 prog2_n1_s1.txt
	python ngrams.py 1 1 prog3 prog3_n1_s1.txt
	python ngrams.py 1 1 prog4 prog4_n1_s1.txt
	python ngrams.py 1 1 prog5 prog5_n1_s1.txt
	python ngrams.py 1 1 prog6 prog6_n1_s1.txt

	python ngrams.py 2 1 prog1 prog1_n2_s1.txt
	python ngrams.py 2 1 prog2 prog2_n2_s1.txt
	python ngrams.py 2 1 prog3 prog3_n2_s1.txt
	python ngrams.py 2 1 prog4 prog4_n2_s1.txt
	python ngrams.py 2 1 prog5 prog5_n2_s1.txt
	python ngrams.py 2 1 prog6 prog6_n2_s1.txt

	python ngrams.py 2 2 prog1 prog1_n2_s2.txt
	python ngrams.py 2 2 prog2 prog2_n2_s2.txt
	python ngrams.py 2 2 prog3 prog3_n2_s2.txt
	python ngrams.py 2 2 prog4 prog4_n2_s2.txt
	python ngrams.py 2 2 prog5 prog5_n2_s2.txt
	python ngrams.py 2 2 prog6 prog6_n2_s2.txt

	python ngrams.py 3 1 prog1 prog1_n3_s1.txt
	python ngrams.py 3 1 prog2 prog2_n3_s1.txt
	python ngrams.py 3 1 prog3 prog3_n3_s1.txt
	python ngrams.py 3 1 prog4 prog4_n3_s1.txt
	python ngrams.py 3 1 prog5 prog5_n3_s1.txt
	python ngrams.py 3 1 prog6 prog6_n3_s1.txt

	python ngrams.py 3 2 prog1 prog1_n3_s2.txt
	python ngrams.py 3 2 prog2 prog2_n3_s2.txt
	python ngrams.py 3 2 prog3 prog3_n3_s2.txt
	python ngrams.py 3 2 prog4 prog4_n3_s2.txt
	python ngrams.py 3 2 prog5 prog5_n3_s2.txt
	python ngrams.py 3 2 prog6 prog6_n3_s2.txt

	python ngrams.py 3 3 prog1 prog1_n3_s3.txt
	python ngrams.py 3 3 prog2 prog2_n3_s3.txt
	python ngrams.py 3 3 prog3 prog3_n3_s3.txt
	python ngrams.py 3 3 prog4 prog4_n3_s3.txt
	python ngrams.py 3 3 prog5 prog5_n3_s3.txt
	python ngrams.py 3 3 prog6 prog6_n3_s3.txt

#It might not work provide a valid ip

2a:
	python 2a.py 160.39.154.90

2b:
	python 2b.py

2c:
	python 2c.py 4180 4199

test:
	python ngrams.py 3 3 prog6 test.txt

clean:
	rm prog1_2_1.txt prog2_2_1.txt prog3_2_1.txt prog4_2_1.txt prog5_2_1.txt \
		prog6_2_1.txt prog1_1_1.txt prog2_1_1.txt prog3_1_1.txt \
		prog4_1_1.txt prog5_1_1.txt prog6_1_1.txt prog1_2_2.txt\
		prog2_2_2.txt prog3_2_2.txt prog4_2_2.txt prog5_2_2.txt\
		prog6_2_2.txt prog1_3_1.txt prog2_3_1.txt prog3_3_1.txt\
		prog4_3_1.txt prog5_3_1.txt prog6_3_1.txt prog1_3_2.txt\
		prog2_3_2.txt prog3_3_2.txt prog4_3_2.txt prog5_3_2.txt\
		prog6_3_2.txt prog1_3_3.txt prog2_3_3.txt prog3_3_3.txt\
		prog4_3_3.txt prog5_3_3.txt prog6_3_3.txt