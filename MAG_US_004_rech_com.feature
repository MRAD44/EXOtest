Feature: Rechercher une commande client
 
Scenario Outline: Le magasinier recherche une commande avec un numero de commande valide_SN
Given Le magasinier recherche une commande client avec l_accord du client
When Le magasinier renseigne un < numero de commande > valide du client
Then Le site Nozama affiche la commande du client

Examples:

    | numero de commande |
    | NC300035           |


Scenario Outline: Le magasinier recherche une commande avec un numero de commande errone_SE
Given Le magasinier recherche une commande client avec l_accord du client
When Le magasinier renseigne un < numero de commande > errone
Then Le site Nozama affiche un message d_erreur " Merci de renseigner une donnee valide. "

Examples:

    | numero de commande |
    | NVµ%25632          |

Scenario Outline: Le magasinier recherche une commande avec nom et prenom du client valides_SA 
Given Le magasinier recherche une commande client avec l_accord du client
When Le magasinier renseigne un <nom client > et un <prenom client> valides
Then Le site Nozama affiche la commande recherchee par <nom client>, <prenom client> et <numero de commande>
 
Examples:

    | nom client       | prenom client   | numero de commande |
    | Durand           | Jean            | NC300035           |

Scenario Outline: Le magasinier recherche une commande avec un nom et prenom du client errones_SE
Given Le magasinier recherche une commande client avec l_accord du client 
When Le magasinier renseigne un <nom client> et un <prenom client> errones
Then Le site Nozama affiche un message d_erreur " Merci de renseigner une donnee valide. "
 
Examples:

    | nom client  | prenom client  |
    | Duran&      | Ja2n           |

 
Scenario Outline: Le magasinier recherche une commande avec une reference client valide_SA
Given Le magasinier recherche une commande client avec l_accord du client
When Le magasinier renseigne une <reference client> valide 
Then Le site Nozama affiche la commande recherchee par <reference client>
 
Examples:

    | reference client   | numero de commande | 
    | RC123345           | NC300035           |

Scenario Outline: Le magasinier recherche une commande avec une reference client erronee_SE
Given Le magasinier recherche une commande client avec l_accord du client 
When Le magasinier renseigne une <reference client> erronee
Then Le site Nozama affiche un message d_erreur " Merci de renseigner une donnee valide. "
 
Examples:

     | reference client |
     | RV%µP3345        |

# MAG_US_004
#Auteur : Adrien
#Réviseur : Yann 04/05/2023
#Rev2 : Kerstin - Yann 09/05/2023
#Validation PO: