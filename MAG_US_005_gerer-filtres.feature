Feature: gestion des filtres produits par le magasinier

Scenario Outline: le magasinier gere les filtres produits pour trouver un produit par categorie_SN
    Given le magasinier est authentifie sur le site Nozama
    When le magasinier selectionne une <categorie> parmi <categorie 1>, <categorie 2>
    And le magasinier selectionne un <filtre produit> parmi <filtre livre 1>, <filtre livre 2>, <filtre livre 3>, <filtre livre 4>, <filtre livre 5>, <filtre livre 6>, <filtre livre 7>, <filtre livre 8>, <filtre livre 9>
    Then le site Nozama affiche les produits en reference du filtre

    Examples:
        | categorie 1 | categorie 2 |
        | Livres      | Jeux video  |

    Examples:
        | filtre livre 1    | filtre livre 2 | filtre livre 3   | filtre livre 4 | filtre livre 5  | filtre livre 6      | filtre livre 7     | filtre livre 8     | filtre livre 9               |
        | Meilleures ventes | Nouveautes     | Romans et polars | BD et Mangas   | Enfants et ados | Scolaires et etudes | Sante et bien-etre | Loisirs et culture | Livres en langues etrangeres |

Scenario Outline: le magasinier gere les filtres produits pour trouver un produit par filtre produit_SA
    Given le magasinier se trouve sur une page produit Nozama
    When le magasinier selectionne un <filtre produit> parmi <filtre livre 1>, <filtre livre 2>, <filtre livre 3>, <filtre livre 4>, <filtre livre 5>, <filtre livre 6>, <filtre livre 7>, <filtre livre 8>, <filtre livre 9>
    Then le site Nozama affiche les produits en reference du filtre

    Examples:
        | filtre livre 1    | filtre livre 2 | filtre livre 3   | filtre livre 4 | filtre livre 5  | filtre livre 6      | filtre livre 7     | filtre livre 8     | filtre livre 9               |
        | Meilleures ventes | Nouveautes     | Romans et polars | BD et Mangas   | Enfants et ados | Scolaires et etudes | Sante et bien-etre | Loisirs et culture | Livres en langues etrangeres |

Scenario Outline: le magasinier gere les filtres produits pour trouver un produit mais obtient un message d_erreur_SE
    Given le magasinier se trouve sur une page produit Nozama
    And le magasinier selectionne un <filtre produit> parmi <filtre livre 1>, <filtre livre 2>, <filtre livre 3>, <filtre livre 4>, <filtre livre 5>, <filtre livre 6>, <filtre livre 7>, <filtre livre 8>, <filtre livre 9>
    Then le site Nozama affiche un message d_erreur : "Aucun produit ne se trouve dans <filtre produit>."

    Examples:  
        | filtre livre 1    | filtre livre 2 | filtre livre 3   | filtre livre 4 | filtre livre 5  | filtre livre 6      | filtre livre 7     | filtre livre 8     | filtre livre 9               |
        | Meilleures ventes | Nouveautes     | Romans et polars | BD et Mangas   | Enfants et ados | Scolaires et etudes | Sante et bien-etre | Loisirs et culture | Livres en langues etrangeres |


    # Auteur : Maud Bacon
    # Reviseurs : Thomas & Yann
    # US : US_MAG_005
    # Derniere correction : 18/05/2023 
    # Derniere Revue : 14/05/2023 
    # Validation PO :