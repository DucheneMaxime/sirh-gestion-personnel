package dev.sgp.web;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;

public class CreerCollaborateurController extends HttpServlet {

	private static int matriculeCount = 0;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateur.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nom = (String) req.getAttribute("nom");
		String prenom = (String) req.getAttribute("prenom");
		LocalDate date = (LocalDate) req.getAttribute("date");
		String adresse = (String) req.getAttribute("adresse");
		String numSecu = (String) req.getAttribute("numSecu");
		if (nom == null || prenom == null || date == null || adresse == null || numSecu == null) {
			resp.sendError(400);
		} else {
			Collaborateur collab = new Collaborateur();
			collab.setActif(true);
			collab.setAdresse(nom);
			collab.setPrenom(prenom);
			collab.setDateDeNaissance(date);
			collab.setAdresse(adresse);
			collab.setNumeroDeSecuriteSociale(numSecu);
			collab.setMatricule("M" + matriculeCount++);
			collab.setDateHeureCreation(ZonedDateTime.now());
			collab.setPhoto("images/panda.jpg");

			// Récupération de la société dans application.properties
			Properties prop = new Properties();
			InputStream input = new FileInputStream("application.proprties");
			prop.load(input);
			String societe = prop.getProperty("societe");
			collab.setEmailPro(prenom + "." + nom + "@" + societe);
			// resp.sendRedirect("sgp/collaborateurs/lister");
		}
	}

}
