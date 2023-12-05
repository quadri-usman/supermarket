# supermarket
# Supermarket Sales Data: Store’s Performance
Introduction:
The growth of supermarkets in most populated cities are increasing and market competitions are
also high. The dataset is one of the historical sales of a supermarket company which has been
recorded in 3 different branches for 3 months.
The objective is to gain a comprehensive understanding of the store's performance, identify
areas for improvement, and make informed decisions to drive growth and profitability
Attribute Information
Invoice id: Computer generated sales slip invoice identification number
Branch: Branch of supercenter (3 branches are available identified by A, B and C).
City: Location of supercenters
Customer type: Type of customers, recorded by Members for customers using member card and
Normal for without member card.
Gender: Gender type of customer
Product line: General item categorization groups - Electronic accessories, Fashion accessories,
Food and beverages, Health and beauty, Home and lifestyle, Sports and travel
Unit price: Price of each product in $
Quantity: Number of products purchased by customer
Tax: 5% tax fee for customer buying
Total: Total price including tax
Date: Date of purchase (Record available from January 2019 to March 2019)
Time: Purchase time (10am to 9pm)
Payment: Payment used by customer for purchase (3 methods are available – Cash, Credit card
and Ewallet)
COGS: Cost of goods sold
Gross margin percentage: Gross margin percentage
Gross income: Gross income (Total - COGS)
Rating: Customer stratification rating on their overall shopping experience (On a scale of 1 to 10)
Analysis Questions:
1. How does the revenue vary across different branches? 
2. Can you identify the top-selling product lines and the least popular ones?
3. What is the distribution of customer types (Members vs. Normal)?
4. What are the preferred payment methods for customers?
5. Is there a correlation between payment method and the total purchase amount?
6. How do the different branches compare in terms of customer ratings?
7. Which of the branches has more of the highest customer rating?
8. Which Gender purchases the most?
Project Tool Used: SQL
SQL Queries and Results
![Screenshot (190)](https://github.com/quadri-usman/supermarket/assets/105228467/fd397b8f-a0f2-462b-8184-a843bbd480fb)
![Screenshot (191)](https://github.com/quadri-usman/supermarket/assets/105228467/96a8412e-a93f-490a-8480-e26a3ab6fa09)


Conclusion
From the analysis, the store is encouraged to always make available and focus more on “Electronic accessories” while improving their advertisement “Health and Beauty”. 
The Overall SQL Queries
select *
from ProjectPortfolio..[supermarket_sales - Sheet1];

select Branch, count(Branch) as BranchCOunt, max([gross income]) MaximumRevenue, 
min([gross income]) as MinimumRevenue, sum([gross income]) as TotalRevenue,
avg([gross income]) as AverageRevenue
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by Branch 
order by Branch;

select [Product line], sum(Quantity) as TotalSales
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by [Product line]
order by TotalSales desc;

select [Customer type], COUNT([Customer type]) CustomerTypeDistribution
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by [Customer type]
order by CustomerTypeDistribution desc;

select Payment, COUNT(payment) as PreferredPaymentMethod
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by Payment
order by PreferredPaymentMethod desc;

select Payment, COUNT(payment) as PaymentCounting, SUM(total) as TotalPurchaseAmount
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by Payment
order by PaymentCounting;

select Branch, rating, COUNT(Rating) as RatingCount, round(sum(Rating),0) as TotalRating
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by Branch, rating
order by Branch; 

select Branch, count(Branch) as BranchCOunt, max(Rating) MaximumRating, 
min(rating) as MinimumRating, sum(Rating) as TotalRating,
round(avg(Rating), 2) as AverageRating
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by Branch 
order by Branch;

select Branch,rating, COUNT(Rating) as RatingCount
from ProjectPortfolio..[supermarket_sales - Sheet1]
where Rating = 10
group by Branch, Rating
order by RatingCount desc;

select Gender, sum(quantity) 'Purcahse'
from ProjectPortfolio..[supermarket_sales - Sheet1]
group by Gender
order by Purcahse desc;
