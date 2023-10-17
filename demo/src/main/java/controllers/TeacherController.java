package controllers;

import mapper.dtos.TeacherDto;
import service.TeacherService;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "teacherController", value = "/teacher-form")
public class TeacherController extends HttpServlet {
    @Inject
    private TeacherService service;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("h1>Teachers</h1>");
        out.println(service.teacherList());
        out.println("</body></html>");
    }

    protected  void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html");
        String name = req.getParameter("teachername");
        String email = req.getParameter("teacheremail");
        List<String> errores = getErrors(name,email);
        Map<String,String> errorsmap = getErrors2(name,email);
        if(errorsmap.isEmpty()) {
            service.update(TeacherDto.builder()
                    .teacherName(name)
                    .teacherEmail(email)
                    .build());
            System.out.println(service.teacherList());
            try (PrintWriter out = resp.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println(" <head>");
                out.println(" <meta charset=\"UTF-8\">");
                out.println(" <title>Resultado form</title>");
                out.println(" </head>");
                out.println(" <body>");
                out.println(" <h1>Resultado form!</h1>");
                out.println(" <ul>");
                out.println(" <li>Name: " + name +
                        "</li>");
                out.println(" <li>Email: " + email +
                        "</li>");
                out.println(" </ul>");
                out.println(" </body>");
                out.println("</html>");
            }
        }
        else{

            req.setAttribute("errors", errores);
            req.setAttribute("errorsmap", errorsmap);
            getServletContext().getRequestDispatcher("/TeacherCrud.jsp").forward(req, resp);
        }
    }

    private Map<String,String> getErrors2(String name, String email) {
        Map<String,String> errors = new HashMap<>();
        if(name==null ||name.isBlank()){
            errors.put("teachername","El nombre es requerido");
        }
        if(email==null ||email.isBlank()){
            errors.put("teacheremail","El email es requerido");
        }
        return errors;
    }
    private List<String> getErrors(String name, String email)
    {
        List<String> errors = new ArrayList<String>();
        if(name==null ||name.isBlank()){
            errors.add("El nombre es requerido");
        }
        if(email==null ||email.isBlank()){
            errors.add("El email es requerido");
        }
        return errors;
    }
    public void destroy() {

    }
}