package kz.test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class DrugServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Drug> drugs = new ArrayList<Drug>();

        drugs.add(new Drug(1L, "Aspirin"));
        drugs.add(new Drug(2L, "Citromon"));
        drugs.add(new Drug(3L, "Antigrippin"));

        req.setAttribute("drugList", drugs);

        getServletContext().getRequestDispatcher("/drugs.jsp").forward(req, resp);
    }
}
