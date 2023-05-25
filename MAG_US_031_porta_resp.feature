Feature: Utilisation du site Nozama avec des appareils differents

Scenario: Le magasinier utilise correctement le site Nozama depuis son smartphone_SN
Given le magasinier a un smartphone connecte a internet
When le magasinier se rend sur le site Nozama depuis son smartphone
Then le site s_adapte aux dimensions de l_ecran du smartphone et s_affiche correctement


Scenario: Le magasinier utilise correctement le site Nozama depuis sa tablette_SA
Given le magasinier a une tablette connectee a internet
When le magasinier se rend sur le site Nozama depuis sa tablette
Then le site s_adapte aux dimensions de l_ecran de la tablette et s_affiche correctement


#US_MAG_031
#Auteur :  Sylvain 17/04/23
#Reviseur: Thomas 18/04/23
#Rev2: Adrien 18/05/23
# Validation PO :