SQLite
INSERT INTO profil (nom, liste_streamers_suivis, nombre_followers, en_live, est_streamer) VALUES

('Clovis', '["Joyca","Mastu","Squeezie"]', 23, FALSE, TRUE),
('Maxence','["Fildrong","Domingo","Gotaga","Anyme","AntoineDaniel"]', 1, FALSE, FALSE);

INSERT INTO calendrier (id_profil, nom, date) VALUES

(1, 'Lets play Fortnite', 2509),
(2, 'Essayer de ne pas rire', 2312),
(2, 'Jeu de rythme', 2412);

INSERT INTO abonnement (id_profil, niveau, est_abonne) VALUES

(3, 3, TRUE);

INSERT INTO categorie (nom, nombre_viewers, nombre_followers) VALUES

('Discussions', 244000, 30000000),
('ELDEN RING', 3000, 1800000),
('Dispatch', 12000, 6700),
('ARC Raiders', 116000, 119000),
('Counter-Strike', 230000, 32000000);

INSERT INTO live (id_profil, id_categorie, nom, nombre_viewers, temps_live, historique_chat) VALUES

(1, 1, 'Live cuisine', 300, 120, '["Bravo mec", "ça parait horible", "lol", "gg"]')

INSERT INTO clips (id_profil, id_live, nom, date) VALUES

(1, 1, 'Cauchemar en cuisine', 2309),
(2, NULL, '100%', 0101);
