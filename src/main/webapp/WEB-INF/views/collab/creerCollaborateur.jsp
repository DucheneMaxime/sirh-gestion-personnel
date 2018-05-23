<%@ page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE-Edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<title>Création de collaborateurs</title>
</head>

<body onload="testValidate()">
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"> <img src="<%= getServletContext().getContextPath()%>/images/panda.jpg"
				alt="Coucou je suis un panda" class="img-thumbnail" />
			</span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link active" href="#">Collaborateurs</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Statistiques</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Activités</a>
				</li>
			</ul>
		</div>
	</nav>

	<!-- Formulaire -->
	<div class="container">
		<h1>Nouveau collaborateur</h1>
		<form method="get" action="/sgp/collaborateurs/lister">
			<div class="form-group row">
				<label for="nom" class="col-sm-2 col-form-label">Nom</label>
				<div class="col-sm-10">
					<input type="text" required class="form-control" name="nom" id="nom"
						placeholder="Entrez votre nom...">
					<div class="invalid-feedback">Veuillez rentrer votre nom</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="prenom" class="col-sm-2 col-form-label">Prénom</label>
				<div class="col-sm-10">
					<input type="text" required class="form-control" name="prenom" id="prenom"
						placeholder="Entrez votre prénom...">
					<div class="invalid-feedback">Veuillez rentrer votre prénom
					</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="date" class="col-sm-2 col-from-label">Date de
					naissance</label>
				<div class="col-sm-10">
					<input type="date" required class="form-control" name="date" id="date">
					<div class="invalid-feedback">Veuillez rentrer votre date de
						naissance</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="adresse" class="col-sm-2 col-from-label">Adresse</label>
				<div class="col-sm-10">
					<textarea class="form-control" required id="date" name="date"
						placeholder="Entrez votre adresse..."></textarea>
					<div class="invalid-feedback">Veuillez rentrer votre adresse
					</div>
				</div>
			</div>
			<div class="form-group row">
				<label for="numSecu" class="col-sm-2 col-from-label">Numéro
					de sécurité sociale</label>
				<div class="col-sm-10">
					<input type="text" required pattern="[0-9]{15}" maxlength="15" class="form-control" name="numSecu" id="numSecu"
						placeholder="Entrez votre numéro de sécurité sociale...">
					<div class="invalid-feedback">Veuillez rentrer votre numéro
						de sécurité sociale</div>
				</div>
			</div>
			<div class="form-group row">
				<button type="submit" data-toggle="modal" data-target="#modalVerif"
					class="btn btn-dark col-2 offset-10">Créer</button>
			</div>

			<!-- Modal -->
			<!-- <div class="modal" id="modalVerif" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title">Création d'un collaborateur</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p class="text-warning">Vous êtes sur le point de créer le
								collaborateur suivant :</p>
							<div class="row">
								<label class="col-sm-4 offset-1">Nom :</label> <label
									class="col-sm-7">Monsieur</label>
							</div>
							<div class="row">
								<label class="col-sm-4 offset-1">Prénom :</label> <label
									class="col-sm-7">Panda</label>
							</div>
							<div class="row">
								<label class="col-sm-4 offset-1">Date de naissance :</label> <label
									class="col-sm-7">16/05/2018</label>
							</div>
							<div class="row">
								<label class="col-sm-4 offset-1">Adresse :</label> <label
									class="col-sm-7">Forêt de bambou</label>
							</div>
							<div class="row">
								<label class="col-sm-4 offset-1">Numéro de sécurité
									sociale :</label> <label class="col-sm-7">0000001</label>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Annuler</button>
							<button type="submit" class="btn btn-primary">Confirmer</button>
						</div>
					</div>
				</div>
			</div>-->

		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
	<script>
		function testValidate() {
			var url = window.location.href;
			if (url.includes("errors")) {
				var elements = document.getElementsByClassName("form-control");
				for (var i = 0; i < elements.length; i++) {
					elements[i]
							.setAttribute("class", "is-invalid form-control");
				}
			}
		}
	</script>
</body>

</html>