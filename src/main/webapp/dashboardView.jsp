<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grand Eats Restaurant</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        header {
            text-align: center;
            padding: 50px;
            background-image: url('"C:/Users/Srikanth/Downloads/download (2).jpeg"'); /* Replace with your image */
            background-size: cover;
            color: #fff;
            border-bottom: 2px solid #ddd;
        }

        h1, h2 {
            margin: 0;
        }

        p {
            margin: 0;
            font-size: 18px;
            color: #ddd;
        }

        section {
            margin: 20px 0;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            border-bottom: 2px solid #4caf50;
            padding-bottom: 5px;
            margin-bottom: 20px;
            text-align: center;
        }

        .menu-item {
            border-bottom: 1px solid #ccc;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .menu-item img {
            max-width: 150px;
            border-radius: 8px;
            margin-right: 20px;
        }

        .menu-item button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .menu-item button:hover {
            background-color: #45a049;
        }

        .order-summary {
            background-color: #f8f8f8;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            margin-top: 20px;
        }

        .order-summary h3 {
            color: #333;
            border-bottom: 2px solid #4caf50;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }

        .order-summary ul {
            list-style-type: none;
            padding: 0;
        }

        .order-summary li {
            margin-bottom: 10px;
            font-size: 16px;
            color: #555;
        }

        .order-summary p {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-top: 20px;
        }

        .order-summary button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            margin-top: 20px;
        }

        .order-summary button:hover {
            background-color: #45a049;
        }

        .customer-reviews {
            margin-top: 20px;
            background-image: url("C:/Users/Srikanth/Downloads/images (1).jpeg"); /* Replace with your image */
            background-size: cover;
            color: #fff;
            padding: 50px;
            text-align: center;
        }

        .review {
            border: 1px solid #ccc;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
        }

        .gallery {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .gallery img {
            width: 100%;
            max-width: 300px;
            margin: 20px 0;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        footer {
            text-align: center;
            padding: 20px;
            background-image: url('"C:/Users/Srikanth/Downloads/images.jpeg"'); /* Replace with your image */
            background-size: cover;
            color: #fff;
            border-top: 2px solid #ddd;
            border-bottom: 2px solid #ddd;
            border-radius: 8px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>Grand Eats Restaurant</h1>
        <p>Welcome to an extraordinary culinary experience!</p>
    </header>

    <section id="menu">
        <h2>Menu</h2>

        <div class="menu-item" id="appetizers">
            <img src="caprese_salad.jpg" alt="Caprese Salad">
            <div>
                <h3>Caprese Salad</h3>
                <p>Fresh tomatoes, mozzarella, and basil drizzled with balsamic glaze. <span class="price">$8.99</span></p>
            </div>
            <button onclick="addToOrder('Caprese Salad', 8.99)">Add to Order</button>
        </div>

        <div class="menu-item" id="main-courses">
            <img src="filet_mignon.jpg" alt="Filet Mignon">
            <div>
                <h3>Filet Mignon</h3>
                <p>Juicy and tender filet mignon served with garlic mashed potatoes and sautéed vegetables. <span class="price">$29.99</span></p>
            </div>
            <button onclick="addToOrder('Filet Mignon', 29.99)">Add to Order</button>
        </div>

        <!-- Add more menu items as needed -->

        <div class="order-summary">
            <h3>Order Summary</h3>
            <ul id="order-list"></ul>
            <p>Total: <span id="total-price">$0.00</span></p>
            <button onclick="submitOrder()">Submit Order</button>
        </div>
    </section>

    <section class="customer-reviews">
        <h2>Customer Reviews</h2>
        <div class="review">
            <p><strong>John Doe</strong></p>
            <p>This restaurant exceeded my expectations! The food was delicious, and the service was excellent.</p>
        </div>
        <div class="review">
            <p><strong>Jane Smith</strong></p>
            <p>I love the cozy ambiance of this place. The staff is friendly, and the menu has a great variety of options.</p>
        </div>
        <!-- Add more reviews as needed -->
    </section>

    <section class="gallery">
        <h2>Gallery</h2>
        <div>
            <img src="C:/Users/Srikanth/Downloads/download.jpeg" alt="Restaurant Interior">
        </div>
        <div>
            <img src="C:/Users/Srikanth/Downloads/download (1).jpeg" alt="Dish Presentation">
        </div>
        <div>
            <img src="restaurant_image_3.jpg" alt="Chef in Action">
        </div>
        <!-- Add more gallery images as needed -->
    </section>

    <footer>
        <p>&copy; 2024 Grand Eats Restaurant. All rights reserved.</p>
    </footer>

    <script>
        let order = [];
        let total = 0;

        function addToOrder(item, price) {
            order.push({ item, price });
            total += price;
            updateOrderSummary();
        }

        function updateOrderSummary() {
            const orderList = document.getElementById('order-list');
            const totalPrice = document.getElementById('total-price');
            orderList.innerHTML = '';

            order.forEach(item => {
                const listItem = document.createElement('li');
                listItem.innerHTML = "`<strong>${item.item}</strong> - $${item.price.toFixed(2)}`";
                orderList.appendChild(listItem);
            });

            totalPrice.textContent = `"$${total.toFixed(2)}"`;
        }

        function submitOrder() {
            alert(`"Order submitted!\nTotal: $${total.toFixed(2)}`");
        }
    </script>

</body>
</html>
