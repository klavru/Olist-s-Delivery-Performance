# Olist-s-Delivery-Performance
 
## Overview

Welcome to the Olist Delivery Performance Analysis project on GitHub. This project aims to provide insights into Olist's delivery performance, focusing on key areas such as top revenue-generating sellers, monthly delivery performance changes in 2017, variation in delivery performance across product categories, and the effectiveness of estimated delivery times.

## Analysis Goals

- Identify the top revenue-generating sellers.
- Analyze how monthly delivery performance changed in 2017.
- Assess the differences in delivery performance across product categories.
- Evaluate the effectiveness of estimated delivery times.

## Introduction

Olist is a Brazilian-based platform that connects e-commerce marketplaces, enabling businesses to reach a broad customer base. Ensuring efficient product delivery is crucial for customer satisfaction.

## Olist's Current Delivery Process

1. **Order Placement and Approval**: When a customer places an order, it goes through an approval process. Once approved, the responsibility for the order is transferred to the seller.

2. **Seller's Packaging and Delivery**: The seller takes charge of packaging the ordered product securely. They are also responsible for delivering the packaged product to the designated Olist logistics operator.

3. **Olist Logistics Operator**: Once the seller delivers the product to the Olist logistics operator, it becomes their responsibility to ensure the safe and timely delivery of the product to the customer.

## Dataset

In this analysis, I utilized a collection of nine datasets obtained from Kaggle, each contributing valuable information about a subset of orders placed on the Olist platform between 2016 and 2018. These datasets are interconnected through a unified data schema, allowing us to seamlessly link and analyze the data.

<img width="1143" alt="image" src="https://github.com/klavru/Olist-s-Delivery-Performance/assets/128393456/823df90f-42f1-45e3-8106-c6c443d3ea7a">


The datasets provide a comprehensive view of the order details, including:

**Order Details**: Unique order IDs and customer IDs, enabling tracking of repeat customers and individual transactions. Seller IDs are also included, providing insights into sellers associated with each order.

**Product Information**: Information about the products in each order, including the number of products ordered, their respective product categories, prices, and associated freight costs.

**Geographical Data**: Location details of both sellers and customers, which play a crucial role in understanding the order's logistics and delivery process.

**Date Records**: A range of significant date records, such as order creation and approval dates, seller deadlines for delivering customer orders to logistics operators, actual drop-off dates, estimated delivery dates communicated to customers, and the dates when orders were successfully delivered.

This unified schema facilitates a comprehensive exploration of the Olist order data, enabling us to derive meaningful insights and make informed recommendations. For more detailed information about each dataset and its specific columns, please refer to the Kaggle page for a comprehensive overview:

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce 

## Column Descriptions

In the process of analyzing the data, I introduced 13 additional columns. These columns are instrumental in providing a deeper understanding of the data and facilitating more comprehensive analysis in the subsequent sections. Below are detailed descriptions of these columns:

- **order_purchase_date**: This column signifies the date when the order was initially purchased, providing insights into the order's creation timeline.

- **approval_date**: It reveals the moment when the order received approval, an essential timestamp in the order fulfillment process.

- **shipping_limit_date**: This column offers information on the seller's stipulated shipping limit date for handing the order over to the logistics partner.

- **shipping_date**: Indicates the specific date when the seller initiated the shipping of the order.

- **order_estimated_delivery_date**: This column communicates the estimated delivery date presented to the customer at the time of purchase, setting their delivery expectations.

- **actual_delivery_date**: Displays the actual date when the order was successfully delivered to the customer.

- **days_from_approval_to_drop_off**: Calculates the number of days it took for the seller to transfer the order to the logistics provider from the point of order approval.

- **days_since_drop_off_until_delivery**: Reflects the duration in days from the moment the order was dropped off to the logistics provider until it was ultimately delivered to the customer.

- **days_since_purchase_until_delivery**: Illustrates the total number of days from the initial purchase of the order to its final delivery.

- **estimated_delivery_days**: Specifies the estimated number of days within which the order is anticipated to be delivered.

- **day_diff_estimated_vs_actual**: Reveals the variation in days between the estimated delivery date and the actual delivery date, helping assess the accuracy of delivery estimates.

- **is_shipped_on_time**: This binary indicator confirms whether the order was shipped on time, providing insights into the timeliness of order processing.

- **is_delivered_on_time**: Similarly, this binary indicator signifies whether the order was delivered on time, emphasizing the adherence to estimated delivery timelines.

These additional columns significantly enhance our ability to delve into the data and draw meaningful conclusions about Olist's delivery performance and order fulfillment efficiency.

## Data Analysis of Deliveries

### Metrics
In our evaluation of Olist's delivery performance, we focus on two crucial metrics to gauge the efficiency and customer satisfaction of their delivery process:

**Percentage of Orders Shipped on Time (96%)**:

This metric indicates the percentage of orders that were shipped either on or before the specified due shipping date. An exceptional 96% of Olist's orders are shipped on time, demonstrating a high level of compliance among suppliers in ensuring timely order shipments. The higher this percentage, the better, as it reflects a significant number of orders being shipped early, enhancing the overall delivery experience.

**Percentage of Orders Delivered on Time (95%)**:

This metric calculates the percentage of orders that reached customers either on or before the estimated delivery date initially presented by Olist during the order placement. An impressive 95% of Olist's orders are delivered on time, reflecting a substantial number of orders arriving early, a key factor in maximizing customer satisfaction.


Olist's delivery performance is strong, with the majority of orders being shipped and delivered on time. While the sellers show commendable compliance in meeting due dates, there is still room for improvement in ensuring even more prompt product deliveries.

## Sellers Overview

<img width="560" alt="image" src="https://github.com/klavru/Olist-s-Delivery-Performance/assets/128393456/fa96168c-504f-4ee3-918e-a84892eaa745">


In our analysis of Olist's operations, a significant insight emerges regarding the distribution of revenue generated by sellers. It's evident that the Pareto principle, often referred to as the 80/20 rule, applies in this context. Specifically, 20% of the sellers on the Olist platform are responsible for generating a remarkable 80% of the total revenue.

### Pareto Principle Application

The Pareto principle, named after Italian economist Vilfredo Pareto, suggests that a small portion of efforts often results in a large portion of the outcomes. In this case, it means that a relatively small group of sellers significantly contributes to the platform's revenue, while a larger group plays a lesser role in this regard.

### Recommendations

Recognizing the importance of this observation, we propose the following recommendations to further optimize the seller ecosystem and enhance the overall Olist experience:

- **Discounts for High-Potential Sellers**: Olist can consider offering targeted discounts or incentives to the top 20% of sellers who are responsible for the majority of revenue. This can encourage these sellers to take on more orders and further boost their contributions to the platform's success.

- **Recommended Sellers Policy**: Implementing a "Recommended Sellers" program can be beneficial. By identifying and endorsing top-performing sellers, Olist can guide customers toward trusted and high-quality sellers, thus enhancing their shopping experience.

- **Analysis of Top Sellers**: A comprehensive analysis of the top sellers can yield valuable insights. Understanding what makes these sellers successful can lead to broader improvements in the platform, such as optimizing logistics, enhancing customer support, or offering tailored marketing strategies. By learning from the best, Olist can elevate the entire seller community's performance.

Incorporating these recommendations can not only maximize the potential of the top revenue-generating sellers but also elevate the overall quality of service provided by Olist. This approach contributes to improved customer satisfaction, retention, and continued growth for the platform.

## Orders Delivery and Shipping Performance (January to November 2017)

<img width="735" alt="image" src="https://github.com/klavru/Olist-s-Delivery-Performance/assets/128393456/19876b21-477e-440a-a233-59f2ce9f0bc6">

In our in-depth analysis of Olist's order delivery and shipping performance during the period from January to November 2017, several noteworthy observations come to light.

### Seller Performance Improvement

One key finding is the progressive improvement in seller performance when it comes to on-time order shipping. At the outset, in January, the on-time order shipping rate stood at 82%. However, by November, this rate had impressively risen to 94%. This positive trend indicates that sellers have made significant strides in dispatching orders promptly as the year progressed.

### Seasonal Variations

Examining delivery times to customers, we observe that April and November witnessed the lowest delivery times, both with a commendable 94% on-time delivery rate. In the remaining months, delivery performance consistently ranged between 96% to 97%. This showcases the platform's capacity for maintaining high delivery standards for the majority of the year.

### Recommendations for Timely Deliveries

To further enhance and sustain timely deliveries, we recommend considering the introduction of penalties such as late fees or modest commission increases for sellers who fail to deliver customer orders on time. This approach would serve as a motivational tool, encouraging sellers to prioritize prompt order dispatch and delivery. By doing so, they can avoid incurring additional commission costs imposed by Olist.

However, it's crucial to apply such penalties judiciously, taking into account that there may be valid reasons for occasional delays in order fulfillment. Implementing a fair and balanced penalty system ensures that the consequences are only applied when warranted, maintaining a cooperative and constructive relationship between Olist and its sellers.

By employing these strategies, Olist can sustain and even elevate its already impressive delivery and shipping performance, benefiting both the platform and its valued customers.


## On-Time Delivery and Shipping to Logistics Partners

In our comprehensive assessment of Olist's delivery performance, it's essential to delve into the specifics of on-time delivery and shipping to logistics partners, as these aspects have a direct impact on customer satisfaction and overall operational efficiency.

<img width="851" alt="image" src="https://github.com/klavru/Olist-s-Delivery-Performance/assets/128393456/f3025545-699e-45b1-a3b6-d42379bbdac5">


### Category-Specific Performance

One intriguing revelation is related to specific product categories, notably "Office Furniture," which stands out as one of the top revenue-generating categories on the platform. However, its performance in terms of on-time delivery and shipping is comparatively lower when compared to other top-performing products.

<img width="862" alt="image" src="https://github.com/klavru/Olist-s-Delivery-Performance/assets/128393456/19568972-b419-497e-9ae5-a3c4fffca9d3">



**On-Time Shipping**: For "Office Furniture," only 83% of orders were shipped on time, demonstrating a notable discrepancy in comparison to other product categories.

**On-Time Delivery**: Similarly, the on-time delivery rate for "Office Furniture" stands at 93%, which lags behind the performance of other product categories where delivery rates consistently range between 95% to 97%. In one specific category, "Furniture Decor," the on-time delivery rate ranges from 91% to 97%.

### Recommendations for Improvement

To address the disparities in on-time delivery and shipping within the "Office Furniture" category, as well as to optimize performance across all categories, several recommendations can be considered:

- **Precise Delivery Term Communication**: Ensuring that accurate and realistic delivery terms are consistently communicated to customers is crucial. This can help manage expectations and prevent potential dissatisfaction due to delayed deliveries.

- **Root Cause Analysis**: A comprehensive analysis of the underlying reasons for delays in the "Office Furniture" category is warranted. Identifying the specific challenges and bottlenecks can guide improvements in the delivery process.

- **Seller Engagement**: Recognizing that delays often stem from sellers not timely transferring orders to logistics operators, it's imperative to analyze the reasons behind these delays. Additionally, implementing a penalty program can act as a motivational tool for sellers to adhere to timelines and prevent disruptions in the entire supply chain.

By adopting these recommendations, Olist can not only enhance the performance of product categories like "Office Furniture" but also elevate the overall delivery experience for customers. This proactive approach ensures that timely deliveries and customer satisfaction remain at the forefront of Olist's operations.



## Difference Between Estimated and Actual Delivery

Examining the substantial variance between estimated and actual delivery times is a critical aspect of Olist's delivery performance analysis. Based on the graph provided, it is evident that the estimated delivery date, typically set at 25 days, differs significantly from the actual time it takes to deliver an order, which averages 12 days.

<img width="930" alt="image" src="https://github.com/klavru/Olist-s-Delivery-Performance/assets/128393456/3b2ea779-3e03-4d60-94a8-d10ea07a7dc4">


### Discrepancy in Delivery Expectations

The observed difference between the estimated and actual delivery times, with the estimation being 13 days longer on average, underscores the importance of accurate and realistic communication with customers regarding delivery timelines.

### Recommendation for Improved Estimation

To address this discrepancy and enhance customer satisfaction, it is strongly recommended that Olist reviews its estimation policy. By refining the estimation process, Olist can provide customers with more precise and reliable delivery information, which aligns closely with the actual delivery times. This not only meets customer expectations more effectively but also builds trust and loyalty among customers.

Incorporating this recommendation ensures that Olist continues to improve its delivery performance and deliver a superior experience to its customers. More accurate delivery estimates contribute to higher customer satisfaction and reinforce Olist's commitment to transparency and reliability.


## Shipping Delays

A notable concern arises when we delve into the aspect of shipping delays, particularly within the "Office Furniture" category. In this category, a substantial 17% of orders were not shipped on time, reflecting a significant proportion of orders facing shipping delays.

### Focus on Improvement

To address this challenge and enhance the overall delivery performance, it is strongly recommended that further analysis is undertaken to gain a deeper understanding of the root causes of shipping delays. By pinpointing the specific reasons behind these delays, Olist can develop targeted strategies to optimize its shipping process.

It's essential to emphasize that the "Office Furniture" category holds a prominent position among the top revenue-generating categories on the platform. Therefore, addressing shipping delays within this category becomes paramount to maintaining revenue and customer satisfaction.

### Focus on Furniture-Related Categories

Furthermore, the analysis indicates that categories related to furniture appear to be more susceptible to shipping delays. These categories experience higher instances of sellers failing to ship orders on time. To ensure smoother operations and enhance overall delivery performance, a concentrated effort to address these delays in furniture-related categories is crucial.

Addressing shipping delays not only contributes to higher customer satisfaction but also supports revenue generation, as it ensures that the top revenue categories operate smoothly and efficiently. This proactive approach aligns with Olist's commitment to delivering quality service and reinforcing its position as a reliable e-commerce platform.


## Summary of Recommendations for Olist's Delivery Performance

In our comprehensive analysis of Olist's delivery performance, we've identified key areas for improvement. These recommendations are crucial for enhancing customer satisfaction and operational efficiency:

- **Sellers Performance**: Acknowledge the Pareto principle and offer discounts to high-potential sellers, implement a "Recommended Sellers" policy, and analyze top sellers for platform-wide improvements.

- **Orders Delivery Performance**: Implement penalties for late deliveries, while being considerate of valid reasons for delays, to ensure timely order shipments.

- **Category-Specific Performance**: Focus on categories like "Office Furniture" with lower on-time delivery rates. Ensure precise delivery terms, analyze reasons for delays, and motivate sellers to meet deadlines through penalty programs.

- **Estimation Policy**: Review the estimation policy to provide customers with more accurate delivery terms, reducing the 13-day average gap between estimated and actual delivery.

- **Shipping Delays**: Investigate the causes of shipping delays, especially in top revenue categories, and develop strategies to improve shipping times, with a particular focus on furniture-related categories.

Implementing these recommendations will bolster Olist's delivery performance, ensuring better customer experiences and supporting revenue growth.


Here my dashboard:

https://public.tableau.com/app/profile/karolina.lavrukaityte/viz/OlistDeliveryPerformancev3/PaymentAnalystDasboard
