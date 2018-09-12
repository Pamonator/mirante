<%-- 
    Document   : index
    Created on : 11/09/2018, 19:42:48
    Author     : a1402072
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="mirante.livraria.model.Autor"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page import="mirante.livraria.model.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        <%
           Autor autor = new Autor(1L, "Gil Carelli");
           ArrayList<Autor> listaAutor = new ArrayList();
           listaAutor.add(autor);
           Livro livro = new Livro("Fogo na Caixa D'água", listaAutor, "IFSP", "2000", 1L, 100);
           EntityManagerFactory emf = Persistence.createEntityManagerFactory("MirantePU");
           EntityManager em= emf.createEntityManager();
           EntityTransaction et = em.getTransaction();
           et.begin();
           em.persist(autor);    
           et.commit();
           et.begin();
           em.persist(livro);    
           et.commit();
           em.close();
           emf.close();           
        %>
        

    </body>
</html>
