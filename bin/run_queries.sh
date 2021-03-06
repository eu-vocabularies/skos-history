#!/bin/bash

# automatically run all the SPARQL query files (*.rq) contained in the $QUERY_FOLDER and
# write the results in the $OUTPUT_FOLDER for further processing.

#######################
# Help text
#######################

usage ()
{
  echo "usage: run_queries.sh [[-f file ] | [-h]]"
  echo "examples: run_queries.sh -f subdiv.config"
  echo "NOTE: the directory of the file needs to be in PATH or the path should be explicit"
}

#######################
# Read configuration
#######################

# demands 1 or 2 command-line arguments
if [ $# -lt 1 -o $# -gt 2 ]
then
  usage
  exit 1
fi

# Handling the command line arguments
# Get the configure file path
while [ "$1" != "" ]; do
  case $1 in
    -f | --file )           shift
                            configfile=$1
                            ;;
    -h | --help )           usage
                            exit
                            ;;
    * )                     usage
                            exit 1
  esac
  shift
done

# reading in the stored variables from the configuration file
. $configfile

#######################
# setting default variable values
#######################

# MIME type in the Accept header for **SELECT** queries
# text/plain						text
# text/csv							CSV
# text/tab-separated-values			TSV
# application/sparql-results+xml	XML
# application/sparql-results+json	JSON

# MIME type in the Accept header for **CONSTRUCT/DESCRIBE** queries
# text/plain				N-Triples
# application/rdf+xml		RDF/XML
# text/n3					N3
# text/turtle				Turtle
# application/json			JSON-LD
RESULT_MIME_TYPE="${RESULT_MIME_TYPE:-text/csv}"

# query result folder
OUTPUT_FOLDER="${OUTPUT_FOLDER:-$BASEDIR/diff}"

# extension of the result files
RESULT_FILE_EXT="${RESULT_FILE_EXT:-.result}"

clean_output()
{
  echo "Cleaning the output folder ($OUTPUT_FOLDER)"
  rm -r $OUTPUT_FOLDER
  mkdir $OUTPUT_FOLDER
  local status=$?
  if [ $status -ne 0 ]; then
    echo "\nFailed to clean (delete and recreate) the output folder $OUTPUT_FOLDER "
    exit $status
  fi
}

sparql_query()
{
  t=`basename $1`
  echo "Running the query from $t"
  query=$(<$1)
  curl -X POST -d "query=$query" -H "Accept: $RESULT_MIME_TYPE" $QUERY_URI -o $OUTPUT_FOLDER/${t}${RESULT_FILE_EXT}
  local status=$?
  if [ $status -ne 0 ]; then
    echo $"Failed to execute the query $t \n---------------\n$query\n---------------"
    exit $status
  fi
}

sparql_query_folder()
{
  # getting all the query filed from the query folder
  query_files=`ls ${QUERY_FOLDER}/*.rq | sort`

  echo "Running, in natural sort order, all the query files (*.rq) from $QUERY_FOLDER"
  #echo $query_files | tr " " "\n"
  for file_path in $query_files
  do  
    t=`basename $file_path`
    sparql_query $file_path
  done
  local status=$?
  if [ $status -ne 0 ]; then
    echo "\nFailed to execute all the queries from $QUERY_FOLDER"
    exit $status
  fi
  echo "Done."
}

clean_output
sparql_query_folder 

echo ""

