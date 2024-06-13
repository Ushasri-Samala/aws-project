# SNS

-----> Resource 1 **"aws_sns_topic"** => This resource creates one or more Amazon SNS topics.
**"for_each"** => This block is used to create a topic for each element in the list of topic names.
**"for_each = toset(var.topics)"** => THis converts a list into a set, and then uses that set to iterate over and create one topic for each unique element in the set.
**"name = each.key"** => here "name" sets the name of the SNS topics to the current element being processed in the for_each loop. "each.key" refers to the name of the current element in the set.

----> !![image](https://github.com/Ushasri-Samala/aws-project/assets/138238539/213db262-6546-4ce1-8481-1e9f3efc91e3)
The block of code creates a list of all possible combinations of SNS topics and endpoints. Each combination is represented by an object with three fields: topic_name, topic_arn, and endpoint.

**"locals"** => This block is used to define local values, which are temporary variabes that can be used within the same Terraform configuration. Using "locals" we can imporove readability and reduce duplication. 
**"flatten()"** => This function is used to combine multipe nested lists into a single list.
**"for topic_key, topic in aws_sns_topic.my_topics : []"** => This line starts an outer loop that iterates over the SNS topics created by the aws_sns_topic.my_topics resource. For each topic, the loop assigns the topic's name to the topic_key variable and the entire topic object to the topic variable.
**"for endpoint in var.endpoints : {}"** => THis line starts an inner loop that iterates over the list of endpoints.(i.e, emails).
**"topic_name"** = This sets the name of the current topic. **"topic_arn"** => This sets the ARN of the current topic. **"endpoint"** => THis sets the current endpoint.


Resource 2: **"aws_sns_topic_subscription"** => 
![image](https://github.com/Ushasri-Samala/aws-project/assets/138238539/1a38d0bb-5950-47df-9109-f4b88c6c996d)


This section of the code is creating a map (a key-value pair) that will be used to determine how many SNS topic subscriptions to create.
1) It starts by looping through each "combination" in the local.topic_endpoint_combinations list. This list contains a set of objects, where each object has three fields: topic_name, topic_arn, and endpoint.
2) For each combination in the list, it creates a unique identifier string using the topic_name and endpoint fields. The format of this string is "${combination.topic_name}-${combination.endpoint}".
3) This unique identifier string becomes the "key" in the map that's being created. The "value" in the map is the entire combination object itself.

**"topic_arn"** => This sets the subscription to the ARN of the corresponding SNS topic.
**"protocol"** => This sets the subscription to email.
**"endpoint"** => This sets the subscription to the corresponding email address.
