/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.magiemagie.servlet;

import atos.magiemagie.entity.Joueur;
import atos.magiemagie.entity.Partie;
import atos.magiemagie.service.PartieService;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author theklaude
 */
@WebServlet(name = "MaPartieServlet", urlPatterns = {"/ma-partie"})
public class MaPartieServlet extends HttpServlet {

    private PartieService service = new PartieService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long idPartie = (long) req.getSession().getAttribute("partieId");
        Partie partie = service.recherchePartieParId(idPartie);

//        req.setAttribute("nomPartie", partie.getNom());
//        req.setAttribute("listeJoueurs", partie.getJoueurs());
          req.setAttribute("partie", partie);
          req.getRequestDispatcher("demarrer-partie.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Joueur> listeJoueurs = service.recherchePartieParId((long) req.getSession().getAttribute("partieId")).getJoueurs();
        req.setAttribute("listeJoueurs", listeJoueurs);
        req.getRequestDispatcher("demarrer-partie.jsp").forward(req, resp);

    }

}
