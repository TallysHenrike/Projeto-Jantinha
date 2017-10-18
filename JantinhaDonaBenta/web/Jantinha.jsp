<!DOCTYPE html>
<html>
    <head>
    	<!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta charset="UTF-8">
        <title>Jantinha</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link rel="stylesheet" href="materialize\css\materialize.css" type="text/css">
    </head>
    <body>
        <ul class="tabs light-blue accent-4">
            <li class="tab col s3"><a href="#preco" class="white-text">Preço</a></li>
            <li class="tab col s3"><a href="#prato" class="white-text">Prato</a></li>
            <li class="tab col s3"><a href="#cardapio" class="white-text active">Cardapio</a></li>
        </ul>

        <div class="row">
            <div class="col s12">
                <form action="Jantinha.jsp" class="col s12 row">
                    <div id="preco" class="col s12">
                        <div class="row col s12">
                            <div class="card-panel z-depth-2">
                                <h4 class="blue-text">Valor das porções:</h4>
                                <div class="collection">
                                    <div class="input-field col s4">
                                        <input type="text" onkeypress="mascara(this, valor);" value="1.00" min="4" max="5" name="arroz" id="arroz" class="validate" required="required" pattern="([0-9]{1,3}\.)?[0-9]{1,3}.[0-9]{2}$">
                                        <label for="arroz" data-error="Exemplo:(0.50)">Arroz</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="text" onkeypress="mascara(this, valor);" value="3.00" min="4" max="5" name="carne" id="carne" class="validate" required="required" pattern="([0-9]{1,3}\.)?[0-9]{1,3}.[0-9]{2}$">
                                        <label for="carne" data-error="Exemplo:(0.50)">Carne</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="text" onkeypress="mascara(this, valor);" value="2.00" min="4" max="5" name="salada" id="salada" class="validate" required="required" pattern="([0-9]{1,3}\.)?[0-9]{1,3}.[0-9]{2}$">
                                        <label for="salada" data-error="Exemplo:(0.50)">Salada</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                    
                    <div id="prato" class="col s12">
                        <div class="row col s12">
                            <div class="card-panel z-depth-2">
                                <h4 class="blue-text">Quantidade das porções:</h4>
                                <blockquote>Prato 1:</blockquote>
                                <div class="collection">
                                    <div class="input-field col s4">
                                        <input type="number" value="2" name="p1arroz" id="p1arroz" class="validate" required="required">
                                        <label for="p1arroz">Arroz</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="number" value="1" name="p1carne" id="p1carne" class="validate" required="required">
                                        <label for="p1carne">Carne</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="number" value="1" name="p1salada" id="p1salada" class="validate" required="required">
                                        <label for="p1salada">Salada</label>
                                    </div>
                                </div>
                                <blockquote>Prato 2:</blockquote>
                                <div class="collection">
                                    <div class="input-field col s4">
                                        <input type="number" value="1" name="p2arroz" id="p2arroz" class="validate" required="required">
                                        <label for="p2arroz">Arroz</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="number" value="2" name="p2carne" id="p2carne" class="validate" required="required">
                                        <label for="p2carne">Carne</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="number" value="1" name="p2salada" id="p2salada" class="validate" required="required">
                                        <label for="p2salada">Salada</label>
                                    </div>
                                </div>
                                <blockquote>Prato 3:</blockquote>
                                <div class="collection">
                                    <div class="input-field col s4">
                                        <input type="number" value="2" name="p3arroz" id="p3arroz" class="validate" required="required">
                                        <label for="p3arroz">Arroz</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="number" value="2" name="p3carne" id="p3carne" class="validate" required="required">
                                        <label for="p3carne">Carne</label>
                                    </div>
                                    <div class="input-field col s4">
                                        <input type="number" value="0" name="p3salada" id="p3salada" class="validate" required="required">
                                        <label for="p3salada">Salada</label>
                                    </div>
                                </div>
                                <blockquote>Cardapio</blockquote>
                                <div class="collection">
                                    <div class="input-field row col s4">
                                        <input type="submit" name="cadastrar" value="Cadastrar" class="btn">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div id="cardapio" class="col s12 active">
            <%
                String arroz = request.getParameter("arroz");
                String carne = request.getParameter("carne");
                String salada = request.getParameter("salada");
                double vlArroz = Double.valueOf(arroz).doubleValue();
                double vlCarne = Double.valueOf(carne).doubleValue();
                double vlSalada = Double.valueOf(salada).doubleValue();
                        
                String p1arroz = request.getParameter("p1arroz");
                String p1carne = request.getParameter("p1carne");
                String p1salada = request.getParameter("p1salada");
                int porArrozP1 = Integer.valueOf(p1arroz).intValue();
                int porCarneP1 = Integer.valueOf(p1carne).intValue();
                int porSaladaP1 = Integer.valueOf(p1salada).intValue();
                
                String p2arroz = request.getParameter("p2arroz");
                String p2carne = request.getParameter("p2carne");
                String p2salada = request.getParameter("p2salada");
                int porArrozP2 = Integer.valueOf(p2arroz).intValue();
                int porCarneP2 = Integer.valueOf(p2carne).intValue();
                int porSaladaP2 = Integer.valueOf(p2salada).intValue();
                
                String p3arroz = request.getParameter("p3arroz");
                String p3carne = request.getParameter("p3carne");
                String p3salada = request.getParameter("p3salada");
                int porArrozP3 = Integer.valueOf(p3arroz).intValue();
                int porCarneP3 = Integer.valueOf(p3carne).intValue();
                int porSaladaP3 = Integer.valueOf(p3salada).intValue();
                
                double valorArrozP1 = vlArroz * porArrozP1;
                double valorCarneP1 = vlCarne * porCarneP1;
                double valorSaladaP1 = vlSalada * porSaladaP1;
                
                double valorArrozP2 = vlArroz * porArrozP2;
                double valorCarneP2 = vlCarne * porCarneP2;
                double valorSaladaP2 = vlSalada * porSaladaP2;

                double valorArrozP3 = vlArroz * porArrozP3;
                double valorCarneP3 = vlCarne * porCarneP3;
                double valorSaladaP3 = vlSalada * porSaladaP3;
                
                double prato1 = valorArrozP1 + valorCarneP1 + valorSaladaP1;
                double prato2 = valorArrozP2 + valorCarneP2 + valorSaladaP2;
                double prato3 = valorArrozP3 + valorCarneP3 + valorSaladaP3;                    
            %>
            <div class="row">
                <div class="col s12 m6 l4">
                    <div class="card medium blue-grey darken-1">
                        <div class="card-content white-text">
                            <blockquote>Pedido:</blockquote>
                            <div class="collection">
                                <span class="card-title">Prato 1</span>
                            </div>
                            <blockquote>Valor Total:</blockquote>
                            <div class="collection">
                                <span class="card-title">R$ <%= prato1 %></span>
                            </div>
                        </div>
                        <div class="card-action">
                            <span class="card-title activator">Tabela Preço/Quantidade<i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4">Preço das porções<i class="material-icons right">close</i></span>
                          <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Arroz</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porArrozP1 %></td>
                                        <td>R$ <%= valorArrozP1 %></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Carne</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porCarneP1 %></td>
                                        <td>R$ <%= valorCarneP1 %></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Salada</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porSaladaP1 %></td>
                                        <td>R$ <%= valorSaladaP1 %></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l4">
                    <div class="card medium blue-grey darken-1">
                        <div class="card-content white-text">
                            <blockquote>Pedido:</blockquote>
                            <div class="collection">
                                <span class="card-title">Prato 2</span>
                            </div>
                            <blockquote>Valor Total:</blockquote>
                            <div class="collection">
                                <span class="card-title">R$ <%= prato2 %></span>
                            </div>
                        </div>
                        <div class="card-action">
                            <span class="card-title activator">Tabela Preço/Quantidade<i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4">Preço das porções<i class="material-icons right">close</i></span>
                          <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Arroz</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porArrozP2 %></td>
                                        <td>R$ <%= valorArrozP2 %></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Carne</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porCarneP2 %></td>
                                        <td>R$ <%= valorCarneP2 %></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Salada</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porSaladaP2 %></td>
                                        <td>R$ <%= valorSaladaP2 %></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l4">
                    <div class="card medium blue-grey darken-1">
                        <div class="card-content white-text">
                            <blockquote>Pedido:</blockquote>
                            <div class="collection">
                                <span class="card-title">Prato 3</span>
                            </div>
                            <blockquote>Valor Total:</blockquote>
                            <div class="collection">
                                <span class="card-title">R$ <%= prato3 %></span>
                            </div>
                        </div>
                        <div class="card-action">
                            <span class="card-title activator">Tabela Preço/Quantidade<i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                          <span class="card-title grey-text text-darken-4">Preço das porções<i class="material-icons right">close</i></span>
                          <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Arroz</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porArrozP3 %></td>
                                        <td>R$ <%= valorArrozP3 %></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Carne</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porCarneP3 %></td>
                                        <td>R$ <%= valorCarneP3 %></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Porção de Salada</th>
                                        <th>Preço da porção</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td><%= porSaladaP3 %></td>
                                        <td>R$ <%= valorSaladaP3 %></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="materialize\js\materialize.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $('ul.tabs').tabs();
              });
            function mascara(o, f) {
                v_obj = o;
                v_fun = f;
                setTimeout("execmascara()", 1);
            }
            function execmascara() {
                v_obj.value = v_fun(v_obj.value);
            }
            function valor(v) {
                v = v.replace(/\D/g, "");
                v = v.replace(/[0-9]{15}/, "invalido");
                v = v.replace(/(\d{1})(\d{11})$/, "$1.$2");
                v = v.replace(/(\d{1})(\d{8})$/, "$1.$2");
                v = v.replace(/(\d{1})(\d{5})$/, "$1.$2");
                v = v.replace(/(\d{1})(\d{1,2})$/, "$1.$2");
                return v;
            }
        </script>
    </body>
</html>