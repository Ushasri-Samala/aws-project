# CLOUDWATCH

-----> Resource **"aws_cloudwatch_dashboard"** => It represents an Amazon CloudWatch dashboard.
**"dashboard_name"** => This name will ne displayed for the CloudWatch dashboard in the AWS Management Console.
**"dashboard_body"** => This is a JSON-encoded string that defines the layout and content of the CloudWatch dashboard.
**"widgets"** => This property is an array that contains the individual widgets to be displayed on the dashboard.
**"type"** => It is a widget that displays CloudWatch metric data. **"x and y"** => This coordinates define the top-left corner of the widget.
**"width and height"** => This properties define the size of the widget.
**"properties"** => properties of widget includng the type of view, title of the widget and the AWS region to use.
**"metrics"** => defines the metrics to be dispayed in the widget. **"period, stat, start, end"** => period(5 minutes), statistic to use (average) and the time range to display(the last 3 hours). 



