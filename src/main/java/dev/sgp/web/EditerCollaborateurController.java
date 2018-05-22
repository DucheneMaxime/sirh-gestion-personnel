package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String matriculeParam = req.getParameter("matricule");
		if (matriculeParam == null) {
			resp.sendError(400, "Un matricule est attendu");
		} else {
			resp.setContentType("text/html");
			resp.getWriter().write("<h1>Édition de collaborateur</h1>" + "<p> Matricule : " + matriculeParam + "</p>");
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		String reponseErreur = "Les paramètres suivants sont incorrects : ";
		resp.setCharacterEncoding("UTF-8");
		if (matriculeParam == null || titreParam == null || nomParam == null || prenomParam == null) {
			if (matriculeParam == null)
				reponseErreur += "\nmatricule";
			if (titreParam == null)
				reponseErreur += "\ntitre";
			if (nomParam == null)
				reponseErreur += "\nnom";
			if (prenomParam == null)
				reponseErreur += "\nprenom";
			resp.sendError(400, reponseErreur);
		} else {
			resp.setContentType("text/html");
			resp.getWriter()
					.write("<!DOCTYPE html><html><head><meta charset='UTF-8'/></head><body><h2>Création d'un collaborateur avec les informations suivantes :</h2><ul><li>Matricule : "
							+ matriculeParam + "</li><li>Titre : " + titreParam + "</li><li>Nom : " + nomParam
							+ "</li><li>Prénom : " + prenomParam + "</li></ul></body></html>");
		}

	}

}
