Feature: Chercher un produit du catalogue

Feature Description

Plan du scénario: le magasinier effectue une recherche du produit du catalogue  du site Nozama_SN

Etant donné que : le magasinier est sur l'interface du site Nozama
Quand : Le magasinier  sélectionne l’action < Me connecter >
Et  : Le magasinier  renseigne un < Login > et un < mdp> corrects
Et que : Le site lui autorise l’accès aux fonctionnalités  tel que le < Compte Client >, le < Suivi de Commandes > et le < Panier >  

Examples:
    | Nom   | Prénom  | Login       | Mdp   | 
    | Tata  | Titine  | Dragon12@|*******|

    Feature: Chercher un produit du catalogue

Feature Description

Plan du scénario: le magasinier effectue une recherche du produit du catalogue  du site Nozama_SA

Etant donné que : le magasinier est sur l'interface du site Nozama
Quand : Le magasinier  sélectionne l’action < Recherche produit >
Et  : Le magasinier  choisi <catalogue>, <catégorie> et le <sous catégorie>
Et que : Le site  lui propose de la <liste> des produit ainsi les < prix> et <ajoute> dans le Panier
 

# Auteur : Hamza
# Reviseur : 
# Rev2 :
# Validation PO :