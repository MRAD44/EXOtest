Feature: Authentifié sur le site Nozama

    Feature Description 

    Scenario Outline: le magasinier souhaite se connecter sur le site Nozama_SN
    Given le magasinier est sur l_interface "se connecter"
    When le magasinier rensigne son "ID" et son "MDP"  corrects
    And le magasinier confirme ses données
    Then le systeme affiche le profile du magasinier avec les fonctionnalités autoriser
    And Le site lui retourne un message d’erreur en cas d’identification impossible  

    Example: 
    | ID |MDP| 
    |Marco| ***** |

    Scenario Outline: le magasinier souhaite se connecter sur le site Nozama_SA
    Given le magasinier est sur l_interface "se connecter"
    When le magasinier rensigne son "ID" et son "MDP"  incorrects
    And le magasinier confirme ses données
    Then Le site lui retourne un message d’erreur veuillez saisire "ID" ou "MDP" corrects
    Then le systeme affiche le profile du magasinier avec les fonctionnalités autoriser
    And Le site lui retourne un message d’erreur en cas d’identification impossible  

    Example: 
    | ID erroné |MDP| 
    |Marca| ***** | 

    Scenario Outline: le magasinier souhaite se connecter sur le site Nozama_SE
    Given le magasinier est sur l_interface "se connecter"
    When le magasinier rensigne son "ID" et son "MDP"  incorrects
    And le magasinier confirme ses données
    Then Le site lui retourne un message d’erreur veuillez saisire "ID" ou "MDP" corrects
    And  le magasinier rensigne son "ID" et son "MDP"  incorrects pour la troisième fois
    Then Le site Nozama affiche un message d'erreur votre compte est bloqué temporairement

    Example: 
    | ID erroné |MDP| 
    |Marca| ***** | 


    # Auteur : Hamza
    # Reviseur : 
    # Rev2 :
    # Validation PO :
