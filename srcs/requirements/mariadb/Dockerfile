FROM debian:buster

LABEL version="1.0" maintainer="raphael khelif <rkhelif@student.42.fr>"

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y
RUN apt-get install mariadb-client -y
RUN apt-get install gettext-base -y
RUN apt-get install procps -y
COPY ./lala.sh ./
COPY ./lala.sql ./
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

#EXPOSE 3306

ENTRYPOINT ["sh", "/lala.sh"]

#######################################
# `` = anticode tres important et non ''
#CREATE DATABASE `test`; creer une db
#CREATE DATABASE IF NOT EXISTS `test`; creer une db si elle n'existe pas
#USE `test`; aller vers une db
#DROP DATABASE `test`; efface la db
#SHOW DATABASES; montre les db
#######################################
#SHOW TABLES; montre les tables de la db
#SHOW TABLES FROM `test`; montre les tables de la db `test`
#CREATE TABLE `t_users`; creer une une table pour la db
#CREATE TABLE IF NOT EXIST `t_users`; creer une table pour la db si elle n'existe pas
#variante
#CREATE TABLE `t_users`
#(	champs de la table
#	`id_user` INT, 		
#	`user_name` VARCHAR(65),
#	`user_birthday` DATE	
#);
#DESCRIBE `t_users`; affiche la table avec les champs;
#ALTER TABLE `t_users` cela modifie la table
#ADD `user_points` TINYINT(2) ajoute un champ
#DROP `user_points` suprimme un champ
#MODIFY `id_user` SMALLINT  modifie une colonne
#CHANGE `user_birthday` `user_birth` DATE; change le nom d'une colonne
#SHOW TABLE STATUS; montre encore plus en detail une table
##################################
###############################
######Contrainte###############





##############################
#######utilisateurs et privileges####
#CREATE USER IF NOT EXISTS `nom de l'utilisateur`@`le nom de l'hote` IDENTIFIED BY `mot de passe`;
#SET PASSWORD FOR 'nom de l'utilisateur'@'nom de l'hote' = 'new'; creer un mot de pour l'utilisateur pas recommender;
#ALTER USER `nom de l'utilisateur`@`le nom de l'hote` IDENTIFIED BY 'nouveu mot de passe';
#RENAME USER `nom de l'utilisateur`@`le nom de l'hote` TO `nom de l'utilisateur`@`le nom de l'hote`

#DROP USER `nom de l'utilisateur`@`le nom de l'hote` supprime l'utilisateur;

# a savoir si le nom de l'hote est omi alors un % se mettra par defaut;

########privileg


########################################
