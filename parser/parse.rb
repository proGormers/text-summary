input = File.read("input0.txt") #one file for now, can add to go through files 0->n later 

sentence = input.split(/[.?!]/) #split string into an array, each new iteam startng at occurence of ! ? .
sentcount = sentence.count

wordcount = input.count(" ") + 1 #this implies one space after punctuation

