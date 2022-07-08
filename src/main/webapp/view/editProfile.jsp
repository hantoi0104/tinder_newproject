<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/7/2022
  Time: 8:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Profile </title>
    <link rel="stylesheet" href="/css/editProfile.css"/>

</head>
<body>
<div class="box">
    <!-- Account page navigation-->
    <nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="#">Profile</a>

    </nav>
    <form class="box" method="post" action="/editProfile">
        <div class="col-xl-4">
            <div class="img">
                <a href="#">
                    <img src="logo.png">
                </a>
            </div>
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header"><h1> Edit Profile</h1> </div>
                <div class="card-body text-center">
                    <!-- Profile picture image-->
                    <img class="img-account-profile rounded-circle mb-2"
                         src="https://scontent.fhan2-4.fna.fbcdn.net/v/t39.30808-6/271600752_1110273243051729_6986374984730511913_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=qhsqhRQYTxAAX-KPU4A&_nc_ht=scontent.fhan2-4.fna&oh=00_AT-9zXjukgDrA6r8CHP1ua0V36V5bvBCxtCwLWcqnsImgA&oe=62CBBA72"
                         alt="">
                    <!-- Profile picture help block-->
                    <!-- Profile picture upload button-->
                    <!--                    <button class="btn btn-primary" type="button">Upload new image</button>-->
                </div>
            </div>
        </div>
        <div class="col-xl-8">
            <!-- Account details card-->
            <div class="card mb-4">
                <div class="card-header"><h2>Account Details</h2></div>
                <div class="card-body">
                    <form>
                        <!-- Form Group (username)-->
                        <div class="mb-3">
                            <!--                            <label class="small mb-1" for="inputUsername">Username </label>-->
                            <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username">
                        </div>


                        <!-- Form Group (email address)-->
                        <div class="mb-3">
                            <!--                            <label class="small mb-1" for="inputEmailAddress">Email address</label>-->
                            <input class="form-control" id="inputEmailAddress" type="email"
                                   placeholder="Enter your email address" >
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (phone number)-->
                            <div class="col-md-6">
                                <!--                                <label class="small mb-1" for="inputPhone">Phone number</label>-->
                                <input class="form-control" id="inputPhone" type="tel"
                                       placeholder="Enter your phone number" >
                            </div>
                            <!-- Form Group (birthday)-->
                            <div class="col-md-6">
                                <!--                                <label class="small mb-1" for="inputBirthday">Age</label>-->
                                <input class="form-control" id="inputBirthday" type="text" name="birthday"
                                       placeholder="Enter your birthday" >
                            </div>
                            <div class="col-md-6">
                                <!--                                <label class="small mb-1" for="inputLinkImage">Link Image</label>-->
                                <input class="form-control" id="inputLinkImage" type="text" name="LinkImage"
                                       placeholder="Enter your linkImage" >
                            </div>
                        </div>
                        <!-- Save changes button-->
                        <button class="saveChanges" type="button">Save changes</button>
                    </form>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
