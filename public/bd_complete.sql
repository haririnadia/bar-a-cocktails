
DELETE FROM boisson;
INSERT INTO  boisson  ( b_id ,  b_nom ,  b_type ,  b_estAlcoolise ,  b_qteStockee ) VALUES
(1, 'Eau gazeuse', 'Eau', 0, 100),
(2, 'Jus de citron vert', 'Jus', 0, 10),
(3, 'Rhum blanc', 'Alcool', 1, 20),
(4, 'Vodka', 'Alcool', 1, 20),
(5, 'Liqueur de cafe', 'Liqueur', 1, 10),
(6, 'Sirop de sucre de canne ', 'Sirop', 0, 15),
(7, 'Lait entier', 'Lait', 0, 5),
(8, 'Redbull', 'Soda', 0, 20),
(9, 'Jägermeister', 'Alcool', 1, 10),
(10, 'Martini', 'Alcool', 1, 12),
(11, 'Coca-Cola', 'Soda', 0, 20),
(12, 'Rhum ambré', 'Alcool', 1, 20),
(13, 'Jus d’ananas', 'Jus', 0, 5),
(14, 'Lait de coco', 'Lait', 0, 5),
(15, 'Tequila', 'Alcool', 1, 9),
(16, 'Grand Marnier', 'Alcool', 1, 5),
(17, 'Porto rouge', 'Vin', 1, 7),
(18, 'Eau plate', 'Eau', 0, 100),
(19, 'Bière Blonde', 'Bière', 1, 50),
(20, 'Sirop de grenadine', 'Sirop', 0, 20),
(21, 'Curaçao bleu', 'Liqueur', 1, 20),
(22, 'Limonade', 'Soda', 0, 25),
(23, 'Sirop de melon', 'Sirop', 0, 10),
(24, 'Chambord', 'Liqueur', 1, 10),
(25, 'Jus de Cranberry', 'Jus', 0, 15),
(26, 'Camparie', 'Liqueur', 1, 15),
(27, 'Gin', 'Alcool', 1, 20),
(28, 'Vin blanc', 'Vin', 1, 10),
(29, 'Tonic', 'Soda', 0, 30),
(30, 'Vin rouge', 'Vin', 1, 12),
(31, 'Liqueur de menthe', 'Liqueur', 1, 25),
(32, 'Chartreuse verte', 'Alcool', 1, 15),
(33, 'Cachaça', 'Alcool', 1, 10);

DELETE FROM cocktail;
INSERT INTO  cocktail  ( c_id ,  c_nom ,  c_cat ,  c_prix ) VALUES
(1, 'Mojito', 'LD', 10),
(2, 'White Russian', 'LD', 10),
(3, 'Jäger Bomb', 'LD', 5),
(4, 'Vodka Martini', 'SD', 15),
(5, 'Cuba libre', 'LD', 5),
(6, 'Piña Colada', 'LD', 10),
(7, 'Margarita', 'SD', 8),
(8, 'Port Wine', 'AD', 5),
(9, 'Monaco', 'LD', 6),
(10, 'Blue Lagoon', 'SD', 8),
(11, 'Sex on  the beach', 'LD', 6),
(12, 'Negroni', 'SD', 5),
(13, 'Cosmopolitan', 'LD', 7),
(14, 'Spritz', 'LD', 5),
(15, 'Americano', 'LD', 10),
(16, 'Gin tonic', 'LD', 4),
(17, 'Blue Hawaiian', 'LD', 6),
(18, 'Vin chaud', 'AD', 10),
(19, 'Arc-en-ciel', 'LD', 12),
(20, 'Caipirinha', 'SD', 4);

DELETE FROM commande;
INSERT INTO  commande  ( com_id ,  com_numTable ) VALUES
(1, 3),
(2, 7),
(3, 8),
(4, 9),
(5, 12),
(6, 4),
(7, 11),
(8, 13),
(9, 1),
(10, 2);

DELETE FROM etape;
INSERT INTO  etape  ( c_id ,  e_num ,  e_desc ) VALUES
(1, 1, 'Réalisez la recette Mojito directement dans le verre.'),
(1, 2, 'Placer les feuilles de menthe dans le verre, ajoutez le sucre et le jus de citrons. Piler consciencieusement afin d\'exprimer l\'essence de la menthe mais sans la broyer. Ajouter le rhum, remplir le verre à moitié de glaçons et compléter avec de l\'eau gazeuse. Mélanger doucement et servir avec une paille.'),
(1, 3, 'Servir dans un verre de type \"tumbler\"'),
(1, 4, 'Décorer de feuilles de menthe fraîches et d\'une tranche de citron.'),
(2, 1, 'Réalisez la recette \"White Russian\" directement dans le verre.'),
(2, 2, 'Dans le verre, sur des glaçons, verser les ingrédients. Servir avec un batônnet mélangeur.Pour un peu plus de légèreté, préférez du lait entier à la crème liquide.'),
(2, 3, 'Servir dans un verre de type \"old fashioned'),
(2, 4, 'Aucune décoration.'),
(3, 1, 'Réalisez la recette \"Jäger Bomb\" directement dans le verre.'),
(3, 2, 'Verser l\'energy drink frais dans un grand verre. Verser le jägermeister dans un verre à shot, placer le verre à shot dans le tumbler'),
(4, 1, 'Réalisez la recette \"Vodka martini (Vodkatini)\" dans un verre à mélange.'),
(4, 2, 'Verser les ingrédients dans un verre à mélange avec des glaçons et remuez légèrement avant de le passer dans le verre à cocktail rafraîchi sans glaçons. Garnir d\'une ou deux olives.'),
(4, 3, 'Servir dans un verre de type \"verre à martini\".'),
(4, 4, 'Décorer avec 1 ou 2 olives vertes dénoyautées.'),
(5, 1, 'Réalisez la recette \"Cuba libre\" directement dans le verre.'),
(5, 2, 'Verser citron et rhum sur des glaçons. Compléter avec le coca cola. Remuer lentement.'),
(5, 3, 'Servir dans un verre de type \"tumbler\"'),
(5, 4, 'Décorer avec une tranche de citron vert.'),
(6, 1, 'Réalisez la recette \"Piña Colada\" au mixer.'),
(6, 2, 'Dans un blender (mixer), versez les ingrédients avec 5 ou 6 glaçons et mixez le tout.'),
(6, 3, 'Servir dans un verre de type \"verre à vin\".'),
(6, 4, 'Décorer avec un morceau d\'ananas et une cerise confite.'),
(7, 1, 'Réalisez la recette \"Margarita\" au shaker.'),
(7, 2, 'Frapper les ingrédients au shaker avec des glaçons puis verser dans le verre givré au citron et au sel fin...\r\n\r\nPour givrer facilement le verre, passer le citron sur le bord du verre et tremper les bords dans le sel.'),
(7, 3, 'Servir dans un verre de type \"verre à margarita\".'),
(7, 4, 'Décorer d\'une tranche de citron vert...'),
(8, 1, 'Réalisez la recette \"Port Wine Negus\" directement dans le verre.'),
(8, 2, 'Dans le verre chaud versez les ingrédients en complétant par l\'eau chaude.'),
(8, 3, 'Servir dans un verre de type \"old fashioned\".'),
(9, 1, 'Réalisez la recette \"Monaco\" dans un verre à mélange.'),
(9, 2, 'Servir le sirop de grenadine et la limonade sur des Glaçons et allonger de Bière. Boire très frais.'),
(9, 3, 'Servir dans un verre de type \"verre tulipe\".\r\n'),
(10, 1, 'Réalisez la recette \"Blue Lagoon\" au shaker.'),
(10, 2, 'Pressez le jus d\'un demi-citron, ajoutez dans le shaker avec les autres ingrédients et des glaçons. Frappez puis versez dans le verre en filtrant. Afin qu\'il soit plus frais et léger, remplissez auparavant le verre de glace pilée.'),
(10, 3, 'Servir dans un verre de type \"verre à martini\".'),
(10, 4, 'Décorer d\'un long zeste de citron vert'),
(11, 1, 'Réalisez la recette \"Sex on the beach\" dans un verre à mélange.'),
(11, 2, 'Verser les alcools sur des glaçons, mélanger et compléter avec les jus de fruits'),
(11, 3, 'Servir dans un verre de type \"verre tulipe\".'),
(11, 4, 'Un morceau d\'ananas et une cerise confite.'),
(12, 1, 'Réalisez la recette \"Negroni\" directement dans le verre'),
(12, 2, 'Versez les ingrédients directement dans le verre sur des glaçons. Touiller légèrement et servir.'),
(12, 3, 'Servir dans un verre de type \"old fashioned\".'),
(12, 4, 'Deux demi-rondelles d\'orange dans le verre.'),
(13, 1, 'Réalisez la recette \"Cosmopolitan\" au shaker.'),
(13, 2, 'Frapper les ingrédients avec des glaçons et verser dans le verre en filtrant.\r\n'),
(13, 3, 'Servir dans un verre de type \"verre à martini\"'),
(13, 4, 'Eventuellement une rondelle de citron sur le bord du verre.'),
(14, 1, 'Réalisez la recette \"Spritz\" directement dans le verre.'),
(14, 2, 'Versez dans le verre directement sur des glaçons.'),
(14, 3, 'Servir dans un verre de type \"tumbler\".'),
(14, 4, 'Une demi-tranche d\'orange.'),
(15, 1, 'Réalisez la recette \"Americano\" directement dans le verre.'),
(15, 2, 'Verser les alcools sur les glaçons, allonger à l\'eau gazeuse, remuer et servir.'),
(15, 3, 'Servir dans un verre de type \"old fashioned\".'),
(15, 4, 'Décorer d\'une demi tranche et d\'un zeste d\'orange.'),
(16, 1, 'Réalisez la recette \"Gin Tonic\" directement dans le verre.'),
(16, 2, 'Servir dans un tumbler, sur des glaçons. Verser le gin, remplir de tonic frais et remuer doucement une seule fois.\r\n'),
(16, 3, 'Servir dans un verre de type \"tumbler\".'),
(17, 1, 'Réalisez la recette \"Blue Hawaiian\" au shaker.'),
(17, 2, 'Frappez les ingrédients au shaker avec des glaçons et versez en filtrant dans le verre rempli de glaçons ou de glace pilée.'),
(17, 3, 'Servir dans un verre de type \"verre tulipe\".'),
(17, 4, 'Décorez avec un morceau d\'ananas et d\'une cerise confite'),
(18, 1, 'Réalisez la recette \"Vin chaud\" à la casserole.'),
(18, 2, 'Faire chauffer le tout à feu moyen et constant pendant 20 minutes minimum, pour dissoudre le sucre et imprégner le vin de l\'odeur de cannelle. Verser dans le verre en filtrant les clous de girofle et consommer... Versez dans un verre qui conserve bien la chaleur. .'),
(18, 3, 'Servir dans un verre de type \"chope\".'),
(18, 4, 'Placer une rondelle d\'orange dans le verre.'),
(19, 1, 'Réalisez la recette \"Arc-en-ciel\" directement dans le verre.'),
(19, 2, 'Servir dans un verre à dégustation. Verser dans l\'ordre en commençant par le sirop de grenadine et sans mélanger.'),
(19, 3, 'Servir dans un verre de type \"verre à dégustation\".'),
(20, 1, 'Réalisez la recette \"Caipirinha\" directement dans le verre.'),
(20, 2, 'Lavez le citron vert et coupez les deux extrémités. Coupez le citron en 8 ou 9 morceaux et retirez la partie blanche centrale responsable de l\'amertume. Placez les morceaux dans le verre et versez une bonne cuillère à soupe de sucre. Pilez fermement le tout dans le verre avec le sucre en poudre jusqu\'à l\'extraction la plus complète possible du jus. Recouvrir le mélange citron-sucre d\'une bonne couche de glace pilée, concassée ou de glaçons simples (ras bord), puis faire le niveau à la cachaça jusqu\'à un doigt du bord.\r\n\r\nNe pas rajouter de sucre après l\'adjonction de la glace (le nouveau sucre ne se dissout plus). Mélanger legèrement avec un mélangeur et servir avec une ou deux petites pailles (au cas où l\'une soit bouchée par la glace ou la pulpe du citron).'),
(20, 3, 'Servir dans un verre de type \"old fashioned\"');

DELETE FROM ingredient;
INSERT INTO  ingredient  ( i_id ,  i_nom ,  i_type ,  i_qteStockee ,  i_uniteStockee ) VALUES
(1, 'Feuille de menthe', 'Aromate', 1000, 'Feuilles'),
(2, 'Crème liquide', 'Crème', 100, 'cL'),
(3, 'Citron vert', 'Agrume', 50, 'unitès'),
(4, 'Olive verte', 'Fruit', 100, 'unités'),
(5, 'Ananas', 'Fruit', 8, 'unités'),
(6, 'Cerise confite', 'Fruit', 50, 'unités'),
(7, 'Sel', 'Condiment', 2000, 'g'),
(8, 'Sucre', 'Condiment', 2000, 'g'),
(9, 'Orange', 'Fruit', 100, 'unités'),
(10, 'Citron jaune', 'Agrume', 60, 'unité'),
(11, 'Clous de girofle', 'Epice', 500, 'g'),
(12, 'Cannelle', 'Epice', 500, 'g');


DELETE FROM ustensile;
INSERT INTO  ustensile  ( u_id ,  u_nom ) VALUES
(1, 'Bâtonnet mélangeur'),
(2, 'Pillon à cocktail'),
(3, 'Paille en inox'),
(4, 'Mixer'),
(5, 'Shaker'),
(6, 'Bac à glaçon'),
(7, 'Broyeur à glace'),
(8, 'Passoire à cocktail'),
(9, 'Casserole'),
(10, 'Filtre');

DELETE FROM verre;
INSERT INTO  verre  ( v_id ,  v_type ) VALUES
(1, 'Tumbler'),
(2, 'Old fashioned'),
(3, 'Shooter'),
(4, 'Verre à Martini'),
(5, 'Verre à mélange'),
(6, 'Verre a vin'),
(7, 'Verre à margarita'),
(8, 'Verre tulipe'),
(9, 'Chope'),
(10, 'Verre à dégustation');


DELETE FROM liencocktailboisson;
INSERT INTO  liencocktailboisson  ( c_id ,  b_id ,  qteBoisson ) VALUES
(1, 1, 0.2),
(1, 2, 0.03),
(1, 3, 0.06),
(1, 6, 0.02),
(2, 4, 0.04),
(2, 5, 0.04),
(2, 7, 0.02),
(3, 8, 0.25),
(3, 9, 0.04),
(4, 4, 0.07),
(4, 10, 0.05),
(5, 2, 0.04),
(5, 3, 0.06),
(5, 11, 0.15),
(6, 3, 0.04),
(6, 12, 0.02),
(6, 13, 0.12),
(6, 14, 0.04),
(7, 2, 0.02),
(7, 15, 0.05),
(7, 16, 0.03),
(8, 17, 0.06),
(8, 18, 0.15),
(9, 19, 0.15),
(9, 20, 0.01),
(9, 22, 0.05),
(10, 2, 0.02),
(10, 4, 0.04),
(10, 21, 0.03),
(11, 4, 0.03),
(11, 13, 0.05),
(11, 23, 0.02),
(11, 24, 0.02),
(11, 25, 0.06),
(12, 10, 0.02),
(12, 26, 0.02),
(12, 27, 0.02),
(13, 4, 0.04),
(13, 16, 0.02),
(13, 25, 0.02),
(13, 2, 0.01),
(14, 1, 0.04),
(14, 26, 0.04),
(14, 28, 0.06),
(15, 10, 0.02),
(15, 26, 0.04),
(15, 1, 0.15),
(16, 27, 0.03),
(16, 29, 0.17),
(17, 3, 0.04),
(17, 21, 0.02),
(17, 13, 0.08),
(17, 14, 0.04),
(18, 30, 0.15),
(18, 2, 0.01),
(19, 20, 0.02),
(19, 16, 0.02),
(19, 31, 0.02),
(19, 32, 0.02),
(20, 33, 0.06);

DELETE FROM liencocktailcommande;
INSERT INTO  liencocktailcommande  ( c_id ,  com_id ,  nbCocktail ) VALUES
(1, 1, 4),
(10, 2, 1),
(3, 2, 1),
(6, 2, 1),
(4, 3, 2),
(16, 3, 1),
(9, 4, 1),
(3, 5, 10),
(1, 5, 5),
(7, 6, 2),
(13, 6, 3),
(16, 6, 1),
(8, 7, 2),
(18, 7, 2),
(2, 8, 1),
(3, 8, 2),
(14, 9, 4),
(15, 10, 2),
(6, 10, 3),
(12, 10, 1);

DELETE FROM liencocktailingredient;
INSERT INTO  liencocktailingredient  ( c_id ,  i_id ,  qteIngredient ) VALUES
(1, 1, 7),
(2, 2, 2),
(4, 4, 4),
(5, 3, 0.25),
(6, 5, 0.1),
(6, 6, 1),
(7, 3, 1),
(7, 7, 1),
(8, 8, 4),
(10, 3, 0.25),
(11, 5, 0.1),
(11, 6, 1),
(12, 9, 0.25),
(13, 10, 0.1),
(14, 9, 0.25),
(15, 9, 0.01),
(17, 5, 0.1),
(17, 6, 1),
(18, 11, 2),
(18, 12, 0.1),
(18, 8, 4),
(20, 3, 1),
(20, 8, 3);

DELETE FROM liencocktailustensile;
INSERT INTO  liencocktailustensile  ( c_id ,  u_id ) VALUES
(1, 2),
(1, 3),
(2, 1),
(5, 3),
(6, 4),
(6, 5),
(7, 5),
(7, 6),
(10, 5),
(10, 7),
(10, 8),
(13, 8),
(13, 5),
(17, 5),
(17, 8),
(18, 9),
(18, 10),
(20, 7),
(20, 3),
(20, 1);

DELETE FROM liencocktailverre;
INSERT INTO  liencocktailverre  ( c_id ,  v_id ) VALUES
(1, 1),
(2, 2),
(3, 1),
(3, 3),
(4, 4),
(5, 1),
(6, 6),
(7, 7),
(8, 2),
(10, 4),
(11, 5),
(11, 8),
(12, 2),
(13, 4),
(14, 1),
(15, 2),
(16, 1),
(17, 8),
(18, 9),
(19, 10),
(20, 2);