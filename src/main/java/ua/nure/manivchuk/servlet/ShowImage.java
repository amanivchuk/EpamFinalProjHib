package ua.nure.manivchuk.servlet;

import ua.nure.manivchuk.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;

/**
 * Created by Lenovo on 3/17/2018.
 */
@WebServlet("/ShowImage")
public class ShowImage extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        response.setContentType("image/jpeg");
        OutputStream out = response.getOutputStream();
        try{
            int index = Integer.valueOf(request.getParameter("index"));

            ArrayList<Car> list = (ArrayList<Car>) request.getSession(false).getAttribute("currentCarList");
            Car car = list.get(index);
            response.setContentLength(car.getImage().length);
            out.write(car.getImage());
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
