<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
   String pagina = request.getParameter("pagina");
   //verifica se o usuário informou o parâmetro "pagina" na URL
   if (pagina == null){
       pagina = "home"; //carrega a página "posts.jsp" por padrão
   }
   pagina = pagina + ".jsp";
   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../../res/css/materialize.min.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="../../res/css/style.css"  media="screen,projection"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="../../res/js/materialize.min.js"></script>
<title>Martinelli's Company</title>
</head>
<body>

  <ul id="slide-out" class="side-nav fixed">
    <li><div class="userView">
    <div class="background">
      <img src="http://www.doctorseguro.com/images/banner_bg.jpg">
    </div>
    <a href="#!user"><img class="circle" src="http://www.iconsfind.com/wp-content/uploads/2016/10/20161014_58006bff8b1de.png"></a>
    <a href="#!name"><span class="white-text name">Olá, Usuário</span></a>
    <a href="#!email"><span class="white-text email">usuario@gmail.com</span></a>
    </div></li>
	
	<%if(pagina.equals("home.jsp")){%>
		<li class="active"><a class="waves-effect" href="index.jsp?pagina=home"><i class="material-icons">home</i>Home</a></li>  
	<%}	else {%>
	    <li><a class="waves-effect" href="index.jsp?pagina=home"><i class="material-icons">home</i>Home</a></li>
	<% } %>
	<%if(pagina.equals("veiculos.jsp")){%>
		<li class="active"><a class="waves-effect" href="index.jsp?pagina=veiculos"><i class="material-icons">directions_car</i>Veículos</a></li>  
	<%}	else {%>
	    <li><a class="waves-effect" href="index.jsp?pagina=veiculos"><i class="material-icons">directions_car</i>Veículos</a></li>
	<% } %>
	<%if(pagina.equals("alugueis.jsp")){%>
		<li class="active"><a class="waves-effect" href="index.jsp?pagina=alugueis"><i class="material-icons">account_balance_wallet</i>Meus Aluguéis</a></li>  
	<%}	else {%>
	    <li><a class="waves-effect" href="index.jsp?pagina=alugueis"><i class="material-icons">account_balance_wallet</i>Meus Aluguéis</a></li>
	<% } %>
	<%if(pagina.equals("duvidas.jsp")){%>
		<li class="active"><a class="waves-effect" href="index.jsp?pagina=duvidas"><i class="material-icons">help_outline</i>Dúvidas</a></li>  
	<%}	else {%>
	    <li><a class="waves-effect" href="index.jsp?pagina=duvidas"><i class="material-icons">help_outline</i>Dúvidas</a></li>
	<% } %>
    <li><a class="waves-effect" href="index.jsp?pagina=sair"><i class="material-icons">exit_to_app</i>Sair</a></li>
  </ul>

  <header> 
    <nav>
      <div class="nav-wrapper cyan lighten-1">
        <a href="#!" class="brand-logo center">Martinelli's Company</a>
      </div>
    </nav>
  </header>

  <main>
	<section id="content">
            <jsp:include page="<%=pagina%>"></jsp:include>
            
    </section>
  </main>

</body>
</html>

<script type="text/javascript">
  $(".button-collapse").sideNav();
  $(document).ready(function(){
      $('.slider').slider();
    });
</script>