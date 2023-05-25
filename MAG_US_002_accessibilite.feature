Feature: Gerer l_accessibilite du site Nozama pour un utilisateur malvoyant

Scenario: L_utilisateur malvoyant souhaite consulter le site Nozama_SN

Given L_utilisateur malvoyant est sur le site Nozama
When L_utilisateur malvoyant active l_outil d_accessibilite
Then Le site Nozama applique les fonctionnalites d_accessibilite

Scenario: L_utilisateur malvoyant ne peut pas consulter le site Nozama_SE

Given L_utilisateur malvoyant est sur le site Nozama
When L_utilisateur malvoyant active l_outil d_accessibilite
And La fonctionnalite n_est pas disponible
Then Le site Nozama renvoie un message d_erreur : "Outil actuellement indisponible"

#Auteurs : Hamza, Adrien et Facourou
#US_MAG_002
#Réviseurs : tous les testeurs + Franck
#Validation PO : Ok le 17/05/23