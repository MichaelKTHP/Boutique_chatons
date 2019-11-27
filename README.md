# Boutique de photos de petit chaton

## TRADUCTION

**BELONGS_TO** = Appartient à
**HAS_MANY** = A beaucoup
**HAS_ONE** = En a un
**THROUGH** = A travers

## Les "tables"

### USER => UTILISATEUR

  - **Email**
  - **Password**
  - **Cart** => Un utilisateur a forcement un panier mais ne peux avoir que un panier à la fois, => Bonus: Il peux supprimer un panier
  - **Order** => Un utilisateur peux n'avoir aucun order comme il peux en avoir plusieurs, => Bonus : il peux aussi annuller une commande
  
### ITEM => PRODUIT (donc les photos de chaton)

  - **Price** => pour le prix
  - **Description** => pour une petite desription
  - **Image_URL** => pour l'affectation d'une image pour chaque produit

### CART => PANIER

  - **Item** => Un panier contient aucun item comme il peux contenir un Item, mais attention il ne peux avoir qu'un seul Item une seul fois
  - **User** => Un panier appartient FORCEMENT à un utilisateur, il ne peux exister sans
  - **Order** => un panier appartiendras a une seul et unique commande
  **BONUS**
  - **TOTAL** => un panier a forcément un total

### ORDER => COMMANDE

  - **User** => une commande appartient FORCEMENT à un utilisateur
