 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en" class=""><head>
      <meta charset="UTF-8">
      <link href="https://fonts.googleapis.com/css?family=DM+Sans&amp;display=swap" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
      <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="/static/css/recommendations.css">

   </head>
   <body>


      <div id="root">
         <div>
            <div class="layout">
               <div class="layout_wrapper">
                  <jsp:include page="template/navbar.jsp" />
                  <div class="layout_content">
                     <div class="feed">
                        <div class="feed_header">
                           <h1 class="feed_title">Followed By My Account :)</h1>
                        </div>

                        <c:forEach var="member" items="${FOLLOWED}">
                            <div class="feed_item">
                               <div class="joke">
                                  <div class="joke_wrapper">
                                     <div class="joke_block joke_block--header">
                                        <span class="joke_element joke_element--author-name">${member.name}</span>
                                        <span class="joke_element joke_element--author-username">${member.email}</span>
                                        <div class="joke_element joke_element--author-img"><img src="/static/images/default-user.jpg"></div>
                                     </div>
                                     <button class="follow-member followed-button" member-id = "${member.id}" type="submit" tabindex="0" style="margin-top: 20px;">
                                  <span tabindex="-1">Unfollow</span>
                                  </button>
                                  </div>
                               </div>
                            </div>
                        </c:forEach>


                        <div class="feed_footer">
                           <div class="pagination pagination--infinite-scroll"><button class="pagination_button_next">Load more...</button></div>
                        </div>
                     </div>
                  </div>
                  <div class="layout_footer">
                     <button id="next_button" type="submit" tabindex="0">
                        <span tabindex="-1">Tweet</span>
                     </button>
                     <button id="next_button2" type="submit" tabindex="0" >
                        <span tabindex="-1">Recommends</span>
                     </button>
                     <jsp:include page="template/sidebar.jsp" />
                  </div>
               </div>
            </div>
         </div>
      </div>

      <script type="text/javascript" src = "/static/js/user.js"></script>
      <script>
         $("#next_button").click( function () {
            $.ajax({
               type: "GET",
               url: "/user/welcome",
               success: function(response){
                  location.href = "/user/welcome";
               },
               contentType: 'application/json'
            });
         });
         $("#next_button2").click( function () {
            $.ajax({
               type: "GET",
               url: "/user/welcome",
               success: function(response){
                  location.href = "/user/recommendations";
               },
               contentType: 'application/json'
            });
         });
      </script>

</body></html>