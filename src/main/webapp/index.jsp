<%@page import="java.util.List"%>
<%@page import="food.moduels.Restaurant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Web Application</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/index.css">
    <!-- Add the Chatbase CSS here if needed -->
    <style>
        .card {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="main.jsp"%>

    <!-- Content Section -->
    <div class="container mt-3">
        <h1 class="display-4">Welcome to Your Web Application!</h1>
        <p class="lead">This is the home page content. You can add more content here.</p>
    </div>

    <!-- Form Section -->
    <div class="container mt-3">
        <form action="RestaurantServlet" method="GET">
            <button type="submit" class="btn btn-primary">Get Restaurants</button>
        </form>
    </div>

    <!-- Restaurant List Section -->
    <div class="container mt-3">
        <h2 class="mb-4">Restaurant List</h2>
        <div class="row">
            <%
            List<Restaurant> restaurants = (List<Restaurant>) request.getAttribute("restaurantList");
            if (restaurants != null && !restaurants.isEmpty()) {
                for (Restaurant restaurant : restaurants) {
            %>
            <!-- Restaurant Cards -->
            <div class="col-md-4 col-sm-6 col-12">
                <div class="card">
                    <img src="https://source.unsplash.com/350x200/?food"
                        class="card-img-top" alt="<%=restaurant.getName()%>">
                    <div class="card-body">
                        <h5 class="card-title"><%=restaurant.getName()%></h5>
                        <p class="card-text">
                            Description of
                            <%=restaurant.getName()%>.
                        </p>
                        <p class="card-text">
                            Cuisine Type:
                            <%=restaurant.getCuisineType()%></p>
                        <p class="card-text">
                            ETA:
                            <%=restaurant.getDeliveryTime()%></p>
                        <div class="d-flex justify-content-between align-items-center">
                            <p class="mb-0">
                                Rating:
                                <%=restaurant.getRating()%></p>
                            <a
                                href="MenuServlet?action=menu&restaurantId=<%=restaurant.getRestaurantid()%>"
                                class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
            }
            }
            %>
        </div>
    </div>
    
    <!-- Footer Section -->
    <footer class="footer mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <h4>Contact Us</h4>
                    <p>123 Main Street, Cityville, Country</p>
                    <p>Email: info@example.com</p>
                    <p>Phone: +1 (123) 456-7890</p>
                </div>
                <div class="col-md-6 col-sm-12">
                    <h4>Location</h4>
                    <!-- Add your location map iframe or any other map integration here -->
                    <iframe
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.8662856150777!2d77.6106318!3d12.916314499999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3d6411bbb945%3A0x884e5e751a18bc1!2sTAP%20Academy%20BTM!5e0!3m2!1sen!2sin!4v1708753388686!5m2!1sen!2sin"
    width="80%" height="250" style="border: 1px solid #dee2e6; border-radius: 10px;"
    allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                </div>
            </div>
            <hr>
            <p class="text-center">&copy; 2024 Your Web Application. All rights reserved.</p>
        </div>
    </footer>

    <!-- Chatbase Chatbot Section -->

    <!-- Chatbase Chatbot Configuration -->
    <script>
        window.embeddedChatbotConfig = {
            chatbotId : "YIdLkQnH9yXWcXTLoiYSz",
            domain : "www.chatbase.co"
        };
    </script>
    <script src="https://www.chatbase.co/embed.min.js"
        chatbotId="YIdLkQnH9yXWcXTLoiYSz" domain="www.chatbase.co" defer></script>

    <!-- Bootstrap JS (including jQuery) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script
        src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Font Awesome JS -->
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"
        integrity="sha512-GWzVrcGlo0TxTRvz9ttioyYJ+Wwk9Ck0G81D+eO63BaqHaJ3YZX9wuqjwgfcV/MrB2PhaVX9DkYVhbFpStnqpQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
