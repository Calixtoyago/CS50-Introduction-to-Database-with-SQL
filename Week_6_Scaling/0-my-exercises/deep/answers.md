# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

The Random Partitioning could be a easier to implement in a database and has a simple function, which is to store some data randomly in the partitions.
However, to search for specific period of time, it would be necessary to make a SELECT search in all parts, due to it would be impossible to say that one part may have all or none data from this period of time.

## Partitioning by Hour

This partitioning method is more complex but offers better performance. It divide each part to a specific period of time, so the datas won't be distributed randomly, but rather each data will have an specific partition to go.
It's also good to search for the datas in an specific period of time, as each partition will have its period of time.
However, as the database grows, managing a large number of partitions can become overwhelming, because it will need more partition and each one will be way bigger, increasing maintenance complexity.

## Partitioning by Hash Value

This partitioning method will distribute a hash value with the same probability to every observation, making the partitions have almost the same numbers of data.
Every data could receive a hash value, so it would be necessary to use a SELECT search in each partition to search a data in a specific period of time.
On the other hand, this method may be useful when looking for a specific data due to it won't be necessary to search in every partition, you can search it's hash value and you will automatically know where this data is located.
