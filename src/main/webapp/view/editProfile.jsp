<!DOCTYPE html>
<html lang="en">
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/css/createProfile.css"/>

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;1,500&display=swap"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />

</head>
<body>
<div class="box">
    <!-- Account page navigation-->
    <nav class="nav nav-borders">
        <a class="nav-link active ms-0" href="#">Profile</a>

    </nav>
    <form class="box" method="post" action="/profile?action=create">
        <div class="col-xl-4">
            <div class="img">
                <a href="#">
                    <img src="/img/logo.png">
                </a>
            </div>
            <!-- Profile picture card-->
            <div class="card mb-4 mb-xl-0">
                <div class="card-header"><h1> Create Profile</h1></div>
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
                            <input value="${editProfile.name}" class="form-control" id="inputUsername" type="text" name ="name"
                                   placeholder="Enter your username">
                        </div>

                        <div class="mb-3">
                            <!--                            <label class="small mb-1" for="inputUsername">Username </label>-->
                            <input value="${editProfile.sex}" class="form-control" id="inputGender" type="text" name = "gender" placeholder="Enter your Gender">
                        </div>


                        <!-- Form Group (email address)-->
                        <div class="mb-3">
                            <!--                            <label class="small mb-1" for="inputEmailAddress">Email address</label>-->
                            <input value="${editProfile.address}" class="form-control" id="Address" type="text" name = "address"
                                   placeholder="Enter your address">
                        </div>
                        <!-- Form Row-->
                        <div class="row gx-3 mb-3">
                            <!-- Form Group (phone number)-->
                            <%--                            <div class="col-md-6">--%>
                            <%--                                <!--                                <label class="small mb-1" for="inputPhone">Phone number</label>-->--%>
                            <%--                                <input class="form-control" id="input idProfile" type="tel" name ="idProfile"--%>
                            <%--                                       placeholder="Enter your phone number">--%>
                            <%--                            </div>--%>
                            <!-- Form Group (birthday)-->
                            <div class="col-md-6">
                                <!--                                <label class="small mb-1" for="inputBirthday">Age</label>-->
                                <input value="${editProfile.age}" class="form-control" id="inputage" type="text" name="age"
                                       placeholder="Enter your age">
                            </div>
                            <div class="col-md-6">
                                <!--                                <label class="small mb-1" for="inputLinkImage">Link Image</label>-->
                                <input value="${editProfile.imgSrc}" class="form-control" id="inputLinkImage" type="text" name="LinkImage"
                                       placeholder="Enter your linkImage">
                            </div>
                        </div>
                        <!-- Save changes button-->
                        <button class="saveChanges" type="submit">Save changes</button>

                    </form>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>