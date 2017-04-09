##Jianpu Ma jm4437  2017Spring COMS 4180

import sys
import binascii
from string import Template


class Ngram():

    # Initializing the input paremeters
    def __init__(self,n_length,s_length,input_file,output_file):
        self.n_length= n_length
        self.s_length= s_length
        self.input_file=input_file
        self. output_file=output_file
        self.calculation()

    # method for calculating the ngram
    def calculation(self):

        # We use a hash table to store the calculated ngrams
        ngram={}

        # Open the inputfile for manipulation
        with open(self.input_file) as f:
            # Maintain the state of the slide window
            offset = 0
            # Getting the size of input file
            while 1:
                # Find the input to current offset
                f.seek(offset)

                # Getting n byte from the located seek position
                chunk = f.read(self.n_length)

                # Update offset value by the slide
                offset+=self.s_length
                # When chunk is less than n, return
                if len(chunk)< self.n_length:
                    break

                # Hexlify the chunk
                else:
                    key=binascii.hexlify(chunk)
                    # Previously store in the hash table, then add one
                    try:
                        ngram[key]+= 1
                    # Previously not store in the hash table, add a new one
                    except KeyError:
                        ngram[key]=1
            sorted_ngram=sorted(ngram.items(),key= lambda k:(-k[1],k[0]))[:20]
            self.gen_stat(sorted_ngram,self.output_file)


    # Generating the stats to the output
    def gen_stat(self,sorted,output):
        # Sorted is Ngram dictionary sorted by value, output is output file name
        with open('template.txt') as t:
            src=Template(t.read())
            d={'input_file':self.input_file,
               'n_length': self.n_length,
                's_length': self.s_length
            }
            template =src.substitute(d) ########
            with open(output,'w') as o:
                o.write(template)
                for i in sorted:
                    o.write(format(i[0]))
                    o.write(":")
                    o.write(str(format(i[1])+"\n"))


def main():

    # Getting the command line information for input
    n=int(sys.argv[1])
    s=int(sys.argv[2])
    input=str(sys.argv[3])
    output=str(sys.argv[4])

    Ngram(n,s,input,output)

if __name__ == '__main__':
    main()


