package controllers;

import service.StudentService;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/studentdelete")
public class StudentDeleteServlet extends HttpServlet {

    @Inject
    private StudentService service;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,
            IOException {
        String idString = req.getParameter("idd");
        try {
            Long id = Long.parseLong(idString);
            service.delete(id);
            try (PrintWriter out = resp.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println(" <head>");
                out.println(" <meta charset=\"UTF-8\">");
                out.println(" <title>Consulta por ID</title>");
                out.println(" </head>");
                out.println(" <body>");
                out.println(" <h1>Estudiante encontrado!</h1>");
                out.println(" <h3>El estudiante con id "+id+" fue eliminado :  "+ service.studentList() + "</h3>");
                out.println(" </body>");
                out.println("</html>");
            }
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_UNAUTHORIZED, "No existe un estudiante con el id ingresado");
        }
    }

}