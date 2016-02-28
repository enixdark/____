import os
import sys
 
spark_home = os.environ.get('SPARK_HOME', None)
if not spark_home:
    raise ValueError('SPARK_HOME environment variable is not set')
sys.path.insert(0, os.path.join(spark_home, 'python'))
sys.path.insert(0, os.path.join(spark_home, 'python/lib/py4j-0.9-src.zip'))
execfile(os.path.join(spark_home, 'python/pyspark/shell.py'))

spark_release_file = spark_home + "/RELEASE"

if os.path.exists(spark_release_file) and "Spark 1.6" in open(spark_release_file).read():
    pyspark_submit_args = os.environ.get("PYSPARK_SUBMIT_ARGS", "")
    if not "pyspark-shell" in pyspark_submit_args: 
        pyspark_submit_args += " pyspark-shell"
        os.environ["PYSPARK_SUBMIT_ARGS"] = pyspark_submit_args
