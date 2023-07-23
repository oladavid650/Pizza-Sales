# Pizza-Sales
# Pizza Project SQL Analysis

This project involves SQL analysis of pizza order data using SQL Server. The dataset contains information about pizza orders, including the quantity sold and the total price of each order. The SQL queries provided below generate insights related to revenue, order value, pizzas sold, and order statistics.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Data Preparation](#data-preparation)
- [Analysis](#analysis)
- [Contributing](#contributing)
- [License](#license)
- [Contact Information](#contact-information)

## Introduction
The Pizza Project SQL Analysis aims to extract valuable insights from the pizza order data to better understand the business's performance. The following key metrics are analyzed:

1. Total Revenue: The sum of the total price of all pizza orders, providing an overview of the business's overall earnings.

2. Average Order Value: The average amount spent per order, calculated by dividing the total revenue by the total number of orders. This metric helps assess customer spending patterns.

3. Total Pizzas Sold: The sum of the quantities of all pizzas sold, giving an indication of the overall pizza demand.

4. Total Orders: The total number of orders placed, providing a measure of the business's transaction volume.

5. Average Pizzas Per Order: The average number of pizzas sold per order, calculated by dividing the number of pizzas sold by the total number of orders. This metric helps understand the average size of an order.

## Installation
To run the SQL analysis, follow these steps:
1. Install SQL Server and ensure it is running on your machine.
2. Download the pizza order dataset and import it into a SQL Server database. Ensure the dataset contains columns such as `order_id`, `total_price`, and `quantity_sold`.
3. Open SQL Server Management Studio (SSMS) or any SQL client tool to execute the SQL queries.

## Data Preparation
Before executing the SQL queries for analysis, make sure the pizza order data is available in a SQL Server database. Ensure the necessary columns for analysis are present and accurate.

## Analysis
Execute the following SQL queries to obtain the insights mentioned earlier:

1. **Total Revenue**:
```sql
SELECT SUM(total_price) AS total_revenue
FROM pizza_orders;
```

2. **Average Order Value**:
```sql
SELECT SUM(total_price) / COUNT(order_id) AS average_order_value
FROM pizza_orders;
```

3. **Total Pizzas Sold**:
```sql
SELECT SUM(quantity_sold) AS total_pizzas_sold
FROM pizza_orders;
```

4. **Total Orders**:
```sql
SELECT COUNT(order_id) AS total_orders
FROM pizza_orders;
```

5. **Average Pizzas Per Order**:
```sql
SELECT SUM(quantity_sold) / COUNT(order_id) AS average_pizzas_per_order
FROM pizza_orders;
```

## Contributing
Contributions to this project are welcome. If you have any suggestions, improvements, or additional analysis ideas, feel free to contribute by following these steps:
1. Fork the repository.
2. Create a new branch for your contribution:
```
git checkout -b feature/your-feature-name
```
3. Make your changes and commit them:
```
git commit -m "Add your commit message"
```
4. Push to the branch:
```
git push origin feature/your-feature-name
```
5. Open a pull request, describing your changes and the rationale behind them.

## License
This project is licensed under the [MIT License](LICENSE.txt). You are free to use and modify the SQL queries for personal or commercial purposes.

## Contact Information
If you have any questions or suggestions regarding this project, please feel free to reach out to me at [your-email@example.com](mailto:your-email@example.com). You can also connect with me on [LinkedIn](https://www.linkedin.com/in/yourname/).

**Note:** Replace the placeholder links and email address with your actual information. Make sure to provide accurate and valid contact details.
