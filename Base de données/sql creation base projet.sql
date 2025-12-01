SQLite
CREATE TABLE profil (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom TEXT NOT NULL,
liste_streamers_suivis JSONB,
nombre_followers INT,
en_live BOOL,
est_streamer BOOL
);

CREATE TABLE calendrier (
id INTEGER PRIMARY KEY AUTOINCREMENT,
id_profil INT,
nom TEXT NOT NULL,
date INT,
FOREIGN KEY (id_profil) REFERENCES profil(id)
);

CREATE TABLE abonnement (
id INTEGER PRIMARY KEY AUTOINCREMENT,
id_profil INT,
niveau INT,
est_abonne BOOL,
FOREIGN KEY (id_profil) REFERENCES profil(id)
);

CREATE TABLE live (
id INTEGER PRIMARY KEY AUTOINCREMENT,
id_profil INT,
id_categorie INT,
nom TEXT NOT NULL,
nombre_viewers INT,
temps_live INT,
historique_chat JSONB,
FOREIGN KEY (id_profil) REFERENCES profil(id)
FOREIGN KEY (id_categorie) REFERENCES categorie(id)
);

CREATE TABLE categorie (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom TEXT NOT NULL,
nombre_viewers INT,
nombre_followers INT
);

CREATE TABLE clips (
id INTEGER PRIMARY KEY AUTOINCREMENT,
id_profil INT,
id_live INT,
nom TEXT NOT NULL,
date INT,
FOREIGN KEY (id_profil) REFERENCES profil(id),
FOREIGN KEY (id_live) REFERENCES live(id)
);

