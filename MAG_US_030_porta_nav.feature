Feature: Utilisation du site Nozama avec des navigateurs differents

Scenario Outline: Le magasinier utilise le site Nozama depuis son navigateur_SN
Given Le magasinier est sur son <navigateur> 
When le magasinier se rend sur le site Nozama
Then le site Nozama s_affiche et fonctionne correctement 

Examples:
| Navigateur |
| Chrome     |
| Safari     |
| Edge       |
| Mozilla    |


# US_MAG_030
#Auteur :  Sylvain 17/04/23
#Réviseur: Thomas 18/04/23
#Rev2: Adrien 18/05/23
# Validation PO :