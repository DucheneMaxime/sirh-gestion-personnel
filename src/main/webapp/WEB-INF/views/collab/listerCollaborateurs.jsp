<%@ page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>SGP - App</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.1.1-dist/css/bootstrap.css">
</head>

<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"> <img src="panda.jpg"
				alt="Coucou je suis un panda" class="img-thumbnail" />
			</span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="#">Collaborateurs</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Statistiques</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Activités</a>
				</li>
			</ul>
		</div>
	</nav>

	<a class="btn btn-dark col-sm-3 offset-sm-9 text-danger"
		href="creer_collab.html">Ajouter un nouveau collaborateur</a>

	<!-- Recherche de collaborateurs -->
	<div class="container">
		<h1>Les collaborateurs</h1>
		<div class="row">
			<div class="col-sm-3 offset-1">
				<label for="searchCollabo">Rechercher un nom ou un prénom
					qui commence par :</label>
			</div>
			<div class="col-sm-4">
				<input type="text" id="searchCollabo" placeholder="Nom ou prénom" />
				<input type="button" class="btn btn-dark" value="Rechercher" />
			</div>
			<div class="col-sm-4">
				<input type="checkbox" id="collaboDesactives" /> <label
					for="collaboDesactives">Voir les collaborateurs désactivés</label>
			</div>
		</div>

		<!-- Filtrage par département -->
		<div class="row">
			<div class="col-sm-3 offset-1">
				<label for="dpt">Filter par départment</label>
			</div>
			<div class="col-sm-4">
				<div class="dropdown">
					<button class="btn btn-dark dropdown-toggle" type="button"
						id="dropdownDepartement" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Départements</button>
					<div class="dropdown-menu" aria-labelledby="dropdownDepartement">
						<button class="dropdown-item" type="button">Tous</button>
						<button class="dropdown-item" type="button">Comptabilité</button>
						<button class="dropdown-item" type="button">Ressources
							Humaines</button>
						<button class="dropdown-item" type="button">Informatique</button>
					</div>
				</div>
			</div>
		</div>

		<br />

		<!-- Cards -->
		<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-12">
				<div class="card">
					<div class="card-header"><%= request.getAttribute("nom") + " " + request.getAttribute("prenom") %></div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-4">
								<img class="card-img" src="panda.jpg" />
							</div>
							<div class="col-sm-4">
								<p class="card-text">Fonction</p>
								<p class="card-text">Département</p>
								<p class="card-text">Email</p>
								<p class="card-text">Téléphone</p>
							</div>
							<div class="col-sm-4">
								<p class="card-text">XXX</p>
								<p class="card-text">XXX</p>
								<p class="card-text">XXX@gmail.com</p>
								<p class="card-text">0000</p>
							</div>
						</div>
						<div class="row">
							<button type="button" class="btn btn-dark offset-8">Éditer</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>