#!/bin/sh

STANFORD_PARSER_HOME='/Users/Trevor/Tools/stanford-parser'
#STANFORD_PARSER_HOME='/home/j/llc/cwang24/Tools/stanford-parser-full-2014-01-04'

java -cp $STANFORD_PARSER_HOME/stanford-parser.jar:$STANFORD_PARSER_HOME/stanford-parser-3.3.1-models.jar edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences newline -retainTmpSubcategories -outputFormat "typedDependencies" -outputFormatOptions "basicDependencies,markHeadNodes" -writeOutputFiles edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz $1
