<?php

namespace bar;
class vueCommandes {

public function getDebutHTML($titre = "Commandes", $lienRetour = "../../"): string{
    $res = '<!DOCTYPE html>
            <html lang="en">
            <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
                    <link rel="stylesheet" href="../../css/style.css">
                    <link rel="stylesheet" href="../../css/cocktails.css">
                    <title>Cocktails</title>
                </head>
                 <h1>'.$titre.'</h1>
                    <div class="arrow" id="retour">
                    <a href="'.$lienRetour.'"><img src="../../images/retour.png" alt="retour" class="retour" ></a>
                    </i>
                    </div>
                <body>';
    return $res;
}

    public function getHTMLUpdate(array  $commandes, $cocktails) : string {
        $corps = "";

        $corps .=    '<div class="insertContainer" id="insertUpdateContainer">'.
            '<form id="updateCommandeForm"  method="get">'.
            '<div class="form-group">';
        foreach ($commandes as $col => $val) {
            if (is_array($val)) {
                $hide = "";
                if($col == 'com_id') $hide = 'hidden';
                $corps.='<label for="name" class="rowsInformation" '.$hide.'>'.$val['titre'].'</label>
                         <input type='.$val['type'].' class="form-control" '.$hide.'  id="com_id" name="'.$col.'" placeholder="numéro commande" value="'.$val['default'].'" >';

            }
        }
        // ==== SECTION commandes === //
        $corps.='<label for="commandes">Cocktails Utilisés</label>';
        $corps .= '<div class="selectionLiaison"> ';
        $nomsauv = '';

        foreach($cocktails as $key => $value){
            $quantite = '';

            if($value['com_id'] == $commandes['com_id']['default']) $quantite = $value['nbCocktail'];

            $corps.='<div class="form-check form-check_Entitiy col-4">   
                    <label class="form-check-label" for="nbCocktail">
                            '.$value['c_nom'] .'
                    </label> <br>
                    <input  type="number" class="form-control" hidden  name="checkCocktailsId[]" value="'.$value['c_id'].'" >
                    <input type="number" class="form-control quantity" id="nbCocktail" name="checkCocktails[]" value="'.$quantite.'">
                    </div>';
        }

        $corps.='</div>';
    // ============================

        $corps.='</div>
                                    <button type="submit" class="btn btn-primary">Modifier</button>
                                </form>
                            </div>';

        return $corps;
    }

    public function getHTMLTable($va) : string {
        $corps = '<div id="informationEntite">
                    <div class="buttonContainer">
                        <form id="insererCommandeFormButton"  method="post" action="?action=create">
                        <button type="submit" class="btn btn-primary" id="btn_ajouter">Ajouter</button>
                        </form>
                    </div>
                    <div class="tableContainer">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">Numéro table</th>
                                    <th scope="col" colspan="3" style="text-align: center;">Actions</th>
                                </tr>
                            </thead>
                            <tbody>';

        foreach ($va as $valeur){
            if ($valeur instanceof EntiteCommande) {

                $corps.= '          <tr>
                                    <th scope="row">'. $valeur->getComId() .'</th>
                                    <td class="rowsInformation">'. $valeur->getComNumTable() . '</td>
                                     <td class="td_buttons_actions"><a href="?action=plus&com_id='.$valeur->getComId().'">
                                    <button type="button" class="btn">Voir la commande</button></a></td> 
                                    <td class="td_buttons_actions"><a href="?action=update&com_id='.$valeur->getComId().'">
                                    <button type="button" class="btn btn-warning etapes-btn">Editer</button></a></td>
                                    <td class="td_buttons_actions">
                                    <a href="?action=delete&com_id='.$valeur->getComId().'">
                                    <button type="button" class="btn btn-danger">Supprimer</button></a></td>
                                </tr>';
            }
        }

        $corps.= '      </tbody>
                       </table>    
                    </div>
                </div> ';
        return $corps;
    }
    public function getHTMLDetails( $commandes)  {

        $res=' 
                <div id="informationEntite">
                    <div class="tableContainer">
                        <table class="table">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Nom Cocktail</th>
                                <th scope="col">Prix Unitaire </th>
                                <th scope="col">Nombre de Cocktail</th>
                                <th scope="col">Total</th>
                            </tr>
                            </thead>
                            <tbody>';

        $somme = 0;
        foreach($commandes as $key => $value){
            $totCocktail = $value['prix'] * $value['nb'];
            $somme+=$totCocktail;
            $res.=' <tr>
                                        <th>'. $value['nom'] .' </th>
                                        <td>'. $value['prix'] .'</td>
                                        <td>'. $value['nb'].'</td>
                                         <td> '. $totCocktail .' €</td>                                        
                                  </tr> ';
        }
        $res .='<tr>
                   <th >Total : </th>
                   <th ></th>
                   <th ></th>
                   <th >'. $somme .' €</th>                                      
                </tr>
       </tbody>
                 </table>    
               </div>
            </div>
        ';
        return $res .= '</div></div>';
    }

    public function getHTMLInsert($cocktails) : string {
        $corps = '<div class="insertContainer" id="insertContainer">
                    <form id="addUtensileForm"  method="post" action="./CRUD_commande.php">
                        <div class="form-group">
                            <label for="name" class="rowsInformation">Numéro commande</label>
                            <input type="number" class="form-control" id="name" name="com_numTable" placeholder="numéro de la table">';

                            // ======= SELECTION DES Coktails ======
                            $corps.='<label for="ingredients">Ingredients Utilisés</label>
                                                          <div class="selectionLiaison"> ';
                            foreach($cocktails as $cocktail){
                                $corps.='<div class="form-check form-check_Entitiy col-4">   
                                                                                <a style="color: black; font-weight: bold;" target="_blank" href="./CRUD_Cocktails.php?action=details&c_id='.$cocktail->getCId().'" for="b_qteBoisson">
                                                                                    '.$cocktail->getCNom() .'
                                                                                </a> <br>
                                                                                <input  type="number" class="form-control" hidden  name="checkCocktailsId[]" value="'.$cocktail->getCId().'" >
                                                                                <input type="number" class="form-control quantity" name="checkCocktails[]">
                                                                            </div>';
                            }
                            $corps.='</div>';
                            // ======================================


        $corps.='</div>
                        <button type="submit" class="btn btn-primary">Ajout</button>
                    </form>
                </div>';

        return $corps;
    }

}