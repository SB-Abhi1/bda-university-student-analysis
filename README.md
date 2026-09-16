\# Big Data Analysis of University Student Records



Big Data Analytics Laboratory (CSE 4346) project — Hadoop MapReduce and

Apache Pig analysis on a 150,000-row university student dataset, using a

Docker-based Hadoop cluster (NameNode, DataNode, ResourceManager, NodeManager).



\## Structure

\- `docker-compose.yml` — Hadoop cluster definition

\- `scripts/` — MapReduce mapper/reducer (awk) and Pig Latin scripts

\- `results/` — Output of all 3 MapReduce and 5 Pig analyses

\- `report/` — Final project report (PDF)



\## How to run

1\. `docker-compose up -d`

2\. Upload dataset to HDFS under `/user/input`

3\. Run scripts inside the `namenode` container using Hadoop Streaming / Pig

