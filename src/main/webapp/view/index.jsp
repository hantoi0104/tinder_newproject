<%@ page import="dao.ProFileDAO" %>
<%@ page import="model.ProFile" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="/css/style.css"/>
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;1,500&display=swap"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
    />
    <title>Document</title>
</head>
<body>
<h1></h1>
<div class="container">
    <div class="side">
        <div class="header">
            <div class="avatar">
                <img src="<%
                ProFile file = ne
             %>" alt=""/>
            </div>
            <div class="title"> <a href="/profile?action=create" > Edit Profile </a></div>
        </div>
        <div class="menu">
            <ul>
                <li>Matches</li>
                <li class="active">Mensagens</li>
            </ul>
        </div>
        <div class="messages">
            <div class="avatar">
                <img src="https://randomuser.me/api/portraits/women/38.jpg" alt=""/>
            </div>
            <a class="message" id="chatuser1" href="#chatbox">
                <div class="user">Caroline</div>
                <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing</div>
            </a>
        </div>
        <div class="messages">
            <div class="avatar">
                <img src="https://randomuser.me/api/portraits/women/39.jpg" alt=""/>
            </div>
            <a class="message" id="chatuser2" href="#chatbox">
                <div class="user">Caroline</div>
                <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing</div>
            </a>
        </div>
        <div class="messages">
            <div class="avatar">
                <img src="https://randomuser.me/api/portraits/women/40.jpg" alt=""/>
            </div>
            <a class="message" id="chatuser3" href="#chatbox">
                <div class="user">Caroline</div>
                <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing</div>
            </a>
        </div>
        <div class="messages">
            <div class="avatar">
                <img src="https://randomuser.me/api/portraits/women/41.jpg" alt=""/>
            </div>
            <a class="message" id="chatuser4" href="#chatbox">
                <div class="user">Caroline</div>
                <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing</div>
            </a>
        </div>
        <div class="messages">
            <div class="avatar">
                <img src="https://randomuser.me/api/portraits/women/42.jpg" alt=""/>
            </div>
            <a class="message" id="chatuser5" href="#chatbox">
                <div class="user">Caroline</div>
                <div class="text">Lorem ipsum dolor sit amet consectetur adipisicing</div>
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

<!--    <SCRipt>-->
<!--        document.getElementById('chatuser1').onclick=()=>{-->
<!--            document.getElementById('chatbox1').style.display="block"-->
<!--        }-->
<!--        document.getElementById('chatuser2').onclick=()=>{-->
<!--            document.getElementById('chatbox2').style.display="block"-->
<!--        }-->
<!--        document.getElementById('chatuser3').onclick=()=>{-->
<!--            document.getElementById('chatbox3').style.display="block"-->
<!--        }-->
<!--        document.getElementById('chatuser4').onclick=()=>{-->
<!--            document.getElementById('chatbox4').style.display="block"-->
<!--        }-->
<!--        document.getElementById('chatuser5').onclick=()=>{-->
<!--            document.getElementById('chatbox5').style.display="block"-->
<!--        }-->
<!--    </SCRipt>-->
</html>