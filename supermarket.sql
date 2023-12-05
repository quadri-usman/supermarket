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
order by Branch 

select Branch, count(Branch) as BranchCOunt, max(Rating) MaximumRating, 
min(rating) as MinimumRating, sum(Rating) as TotalRating,
round(avg(Rating),2) as AverageRating
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
