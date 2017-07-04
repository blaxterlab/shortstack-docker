FROM ubuntu:16.04
LABEL maintainer="sujai.kumar@ed.ac.uk"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y bowtie software-properties-common cpanminus
RUN apt-add-repository ppa:j-4/vienna-rna
RUN apt-get update
RUN apt-get install -y samtools bedtools vienna-rna
RUN curl https://raw.githubusercontent.com/MikeAxtell/ShortStack/v3.8.3/ShortStack >ShortStack
RUN chmod a+x ShortStack
ENV PATH /:$PATH
CMD ShortStack
