<%@include file="header.jsp" %>
    <!-- ===========================================Carousel================================================== -->

    <div id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item">
          <img src="${imgloc}carouselimg1.jpg" alt="First carousel Image">
       </div>
        <div class="item">
          <img  src="${imgloc}carouselimg2.jpg"    alt="Second carousel Image">
          </div>
        <div class="item  active">
          <img src="${imgloc}carouselimg3.jpg"    alt="Third carousel Image">
         </div>
		 <div class="item">
          <img src="${imgloc}carouselimg4.jpg"    alt="Fourth carousel Image">
         </div>
   </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
        
        <!--carousel end here -->

 <div class="row">
  <div class="col-md-4">
    <a href="pulpitrock.jpg" class="thumbnail">
      <p>Pulpit Rock: A famous tourist attraction in Forsand, Ryfylke, Norway.</p> 
      <img src="pulpitrock.jpg" alt="Pulpit Rock" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="moustiers-sainte-marie.jpg" class="thumbnail">
      <p>Moustiers-Sainte-Marie: Considered as one of the "most beautiful villages of France".</p>
      <img src="moustiers-sainte-marie.jpg" alt="Moustiers Sainte Marie" style="width:150px;height:150px">
    </a>
  </div>
  <div class="col-md-4">
    <a href="cinqueterre.jpg" class="thumbnail">
      <p>The Cinque Terre: A rugged portion of coast in the Liguria region of Italy.</p> 
      <img src="cinqueterre.jpg" alt="Cinque Terre" style="width:150px;height:150px">
    </a>
  </div>
</div> 
 </div>

<%@include file="footer.jsp"%>