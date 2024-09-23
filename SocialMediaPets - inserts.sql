INSERT INTO `social_media_pets`.`users` (`idUsers`, `name`, `email`, `password`) VALUES ('1', 'diego', 'diego@gmail.com', 'dielocopet');
INSERT INTO `social_media_pets`.`users` (`idUsers`, `name`, `email`, `password`) VALUES ('2', 'Eduardo', 'Eduardo@gmail.com', 'educrazymascota');

INSERT INTO `social_media_pets`.`specie` (`idSpecie`, `nameSpecie`) VALUES ('1', 'Dog');
INSERT INTO `social_media_pets`.`specie` (`idSpecie`, `nameSpecie`) VALUES ('2', 'Cat');

INSERT INTO `social_media_pets`.`pets` (`idPets`, `namePet`, `age`, `idSpecie`) VALUES ('1', 'Chuchin', '12', '1');
INSERT INTO `social_media_pets`.`pets` (`idPets`, `namePet`, `age`, `idSpecie`) VALUES ('2', 'Garras', '1', '2');

INSERT INTO `social_media_pets`.`profile` (`idProfile`, `nameProfile`, `idPet`) VALUES ('1', 'Chuchin666', '1');
INSERT INTO `social_media_pets`.`profile` (`idProfile`, `nameProfile`, `idPet`) VALUES ('2', 'Garrita_influencer', '2');

INSERT INTO `social_media_pets`.`video` (`idVideo`, `Video`) VALUES ('1', 'Video de chuchin mordiendo una ardilla');
INSERT INTO `social_media_pets`.`video` (`idVideo`, `Video`) VALUES ('2', 'video de garritas comiendo un atun');

INSERT INTO `social_media_pets`.`image` (`idImage`, `Image`) VALUES ('1', 'Garritas durmiendo');
INSERT INTO `social_media_pets`.`image` (`idImage`, `Image`) VALUES ('2', 'Chuchin viendo television');

INSERT INTO `social_media_pets`.`content` (`idContent`, `idImage`, `idVideo`) VALUES ('1', '2', '1');
INSERT INTO `social_media_pets`.`content` (`idContent`, `idImage`, `idVideo`) VALUES ('2', '1', '2');

INSERT INTO `social_media_pets`.`posts` (`idPosts`, `title`, `description`, `idContent`, `likes`, `idProfile`) VALUES ('1', 'Chuchin ', 'chuchin es muy lindo', '1', '15', '1');
INSERT INTO `social_media_pets`.`posts` (`idPosts`, `title`, `description`, `idContent`, `likes`, `idProfile`) VALUES ('2', 'gatita loca', 'Garritas es toda una loca', '2', '100', '2');

INSERT INTO `social_media_pets`.`friends` (`idFriends`, `idPets`) VALUES ('1', '1');
INSERT INTO `social_media_pets`.`friends` (`idFriends`, `idPets`) VALUES ('2', '1');
INSERT INTO `social_media_pets`.`friends` (`idFriends`, `idPets`) VALUES ('3', '2');

INSERT INTO `social_media_pets`.`comment` (`idComment`, `idProfile`, `Comment`, `idPost`) VALUES ('1', '2', 'Chuchin, que fuerte eres wow', '1');
INSERT INTO `social_media_pets`.`comment` (`idComment`, `idProfile`, `Comment`, `idPost`) VALUES ('2', '1', 'Que gatita mas preciosa, estas soltera', '2');

