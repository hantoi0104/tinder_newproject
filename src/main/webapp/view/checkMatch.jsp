<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/7/2022
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="/css/checkMatch.css">

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="side">
        <div class="header">
            <div class="avatar">
                <img src="https://randomuser.me/api/portraits/women/64.jpg" alt=""/>
            </div>
            <div class="title">Menu Profile</div>
        </div>
        <div class="menu">
            <ul>
                <li class="active">Matches</li>
                <li >Mensagens</li>
            </ul>
        </div>
        <div class="messages">
            <div class="avatar">
                <img src="https://randomuser.me/api/portraits/women/38.jpg" alt=""/>
            </div>
            <a class="message" id="chatuser1" href="#chatbox">
                <div class="user">Caroline</div>
                <div class="heart1">
                    <i class="fas fa-heart"></i>
                </div>

                <div class="no1">
                    <i class="fas fa-times"></i>
                </div>
            </a>
        </div>

    </div>
    <div class="content">
        <div class="card">
            <div class="user">

                <img id="img"
                     onclick="changImage()"
                     class="user"
                     src="https://scontent.fhan3-4.fna.fbcdn.net/v/t39.30808-6/272262748_3088027628119689_231799827971238969_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=9whuEGNS4g8AX-rNtpX&_nc_ht=scontent.fhan3-4.fna&oh=00_AT_7f24pnZQpe6rxER-J_D36yFVYccRMm5eGhDQqbnrFyQ&oe=62CAA371"
                     alt=""
                />
                <script>
                    var index = 1;

                    function changImage() {
                        var imgs = ["https://scontent.fhan3-4.fna.fbcdn.net/v/t39.30808-6/272262748_3088027628119689_231799827971238969_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=9whuEGNS4g8AX-rNtpX&_nc_ht=scontent.fhan3-4.fna&oh=00_AT_7f24pnZQpe6rxER-J_D36yFVYccRMm5eGhDQqbnrFyQ&oe=62CAA371",
                            "https://scontent.fhan3-4.fna.fbcdn.net/v/t39.30808-6/250682464_3036047353317717_9205388572016289738_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=I25mHbWtyo4AX-4MqSF&tn=4zqBMGK9EhG8L5A3&_nc_ht=scontent.fhan3-4.fna&oh=00_AT95_sui1knXns68dkVPD6MHTrwtuDPlo-mydYUSxJdPnA&oe=62C8DF9B",
                            "https://scontent.fhan3-3.fna.fbcdn.net/v/t1.6435-9/191278124_2919997381589382_6901741480634751103_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=Fsdn5e00OXQAX9pGXuc&_nc_ht=scontent.fhan3-3.fna&oh=00_AT8P9x8YyEqR2rvotU8OmrIWvqV_bJzPypBzIFHR18T8Qg&oe=62E973DD",
                            "https://scontent.fhan3-5.fna.fbcdn.net/v/t1.6435-9/162869970_2865315080390946_2317604713227553400_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=F5qvbktmb1cAX8FB24c&_nc_ht=scontent.fhan3-5.fna&oh=00_AT9qvn4wnv8mVxFd5ov8ja4mlzcp5EI7v0VP6WiAESnWZQ&oe=62E89522"];

                        document.getElementById('img').src= imgs[index];
                        index++;
                        if (index == imgs.length){
                            index=0;
                        }
                    }
                </script>

                <div class="profile">
                    <div class="name">Công Nghiệp <span>20</span></div>
                    <div class="local">
                        <i class="fas fa-map-marker-alt"></i>
                        <span> Hà Nội</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="buttons">
            <div class="no">
                <i class="fas fa-times"></i>
            </div>
            <div class="star">
                <i class="fas fa-star fa"></i>
            </div>
            <div class="heart">
                <i class="fas fa-heart"></i>
            </div>
        </div>


        <!--				<div class="contenProFile">-->
        <!--					<h1> alo</h1>-->
        <!--					<h1> alo</h1>-->
        <!--					<h1> alo</h1>-->
        <!--					<h1> alo</h1>-->
        <!--					<h1> alo</h1>-->
        <!--					<h1> alo</h1>-->
        <!--				</div>-->


    </div>

</div>
</body>
</html>
