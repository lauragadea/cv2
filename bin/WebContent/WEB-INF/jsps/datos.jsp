<%@include file="includes/header.jsp" %>
<body>
<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>

				<c:choose>
					<c:when test="${objeto == false}">
				
					<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/creardatos"
					modelAttribute="datos">
					
					
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     					 <h3>Datos Personales</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                  	
		                   	</div>
		                </div>
					</div>
					
					<div class="form-group">
					
						<label for="dni">DNI
						<input type="text"
							id="dni" class="form-control" path="dni"
							name="dni" placeholder="DNI" value="${dni}" readonly></label></div>
					
					
						
					<!-- NOMBRE -->
					<div class="form-group">
						<label for="inputName">Nombre</label> <input type="text"
							id="nombre" class="form-control" path="nombre"
							name="nombre" placeholder="Nombre">
						<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- APELLIDO -->
					<div class="form-group">
						<label for="inputApellido">Apellido</label> <input type="text"
							class="form-control" id="alu_apellido" path="apellido"
							name="apellido" placeholder="Apellido">
						<form:errors cssClass="error" path="apellido"></form:errors>
					</div>

					<!-- SEXO -->
					<div class="form-group">
						<div class="dropdown">
							<label for="inputNumDoc">Sexo</label><br> <select
								class="form-control" path="sexo" id="sexo"
								name="sexo"><form:errors cssClass="error"
									path="sexo"></form:errors>
								
								<option value="Masculino">Masculino</option>
								<option value="Femenino">Femenino</option>
							</select>
						</div>
					</div>

					<!-- ESTADO CIVIL -->
					<div class="form-group">
						<label for="inputEstadoCivil">Estado civil</label> <select
							class="form-control" id="estado_civil" path="estado_civil"
							name="estado_civil" placeholder="estado_civil" value="${estado_civil}">
							<option value="Soltero">Soltero</option>
							<option value="Casado">Casado</option>
							<option value="Viudo">Viudo</option>
							
						</select>
						<form:errors cssClass="error" path="estado_civil"></form:errors>
					</div>



					<!-- EMAIL -->
					<div class="form-group">
						<label for="inputEmail">Email</label> <input type="email"
							class="form-control" id="email" path="email"
							name="email" placeholder="Email">
						<form:errors cssClass="error" path="email"></form:errors>
					</div>
					
					
					<!-- FECHA DE NACIMIENTO -->
					<div class="form-group date">
					<label for="inputFechaNac">Fecha de Nacimiento</label> 						
						<div class="date">							
							<select class="form-control" id="dia" name="dia" value="${dia}">
							<option selected="${diaa}">${diaa}</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
							</select> 
													
							<select class="form-control" id="mes" name="mes" value="${mess}">
							    <c:forEach items="${meses}" var="mes">
							        <option value="${mes.key}" ${mes.key == mess ? 'selected' : ''}>${mes.value}</option>
							    </c:forEach>
							</select>
													
							<select class="form-control" id="anio" name="anio"
							value="${anio}">
							<option selected="${anioo}">${anioo}</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
							<option value="1949">1949</option>
							<option value="1948">1948</option>
							<option value="1947">1947</option>
							<option value="1946">1946</option>
							<option value="1945">1945</option>
							<option value="1944">1944</option>
							<option value="1943">1943</option>
							<option value="1942">1942</option>
							<option value="1941">1941</option>
							<option value="1940">1940</option>
							<option value="1939">1939</option>
							<option value="1938">1938</option>
							<option value="1937">1937</option>
							<option value="1936">1936</option>
							<option value="1935">1935</option>
							<option value="1934">1934</option>
							<option value="1933">1933</option>
							<option value="1932">1932</option>
							<option value="1931">1931</option>
							<option value="1930">1930</option>
							</select>
							
						</div>
					</div>

					<div class="form-group">
						<label for="inputNacionalidad">Nacionalidad</label> <select
							class="form-control" id="nacionalidad" path="nacionalidad"
							name="nacionalidad" placeholder="nacionalidad" value="${nacionalidad}">
							
					<option value="Afganistán">Afganistán</option>
							<option value="Albania">Albania</option>
							<option value="Alemania">Alemania</option>
							<option value="Andorra">Andorra</option>
							<option value="Angola">Angola</option>
							<option value="Anguilla">Anguilla</option>
							<option value="Antartida">Antártida</option>
							<option value="Antigua y Barbuda">Antigua y Barbuda</option>
							<option value="Antillas Holandesas">Antillas Holandesas</option>
							<option value="Arabia Saudí">Arabia Saudí</option>
							<option value="Argelia">Argelia</option>
							<option value="Argentina" selected>Argentina</option>
							<option value="Armenia">Armenia</option>
							<option value="Aruba">Aruba</option>
							<option value="Australia">Australia</option>
							<option value="Austria">Austria</option>
							<option value="Azerbaiyán">Azerbaiyán</option>
							<option value="Bahamas">Bahamas</option>
							<option value="Bahrein">Bahrein</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="Barbados">Barbados</option>
							<option value="Bélgica">Bélgica</option>
							<option value="Belice">Belice</option>
							<option value="Benin">Benin</option>
							<option value="Bermudas">Bermudas</option>
							<option value="Bielorrusia">Bielorrusia</option>
							<option value="Birmania">Birmania</option>
							<option value="Bolivia">Bolivia</option>
							<option value="Bosnia y Herzegovina">Bosnia y Herzegovina</option>
							<option value="Botswana">Botswana</option>
							<option value="Brasil">Brasil</option>
							<option value="Brunei">Brunei</option>
							<option value="Bulgaria">Bulgaria</option>
							<option value="Burkina Faso">Burkina Faso</option>
							<option value="Burundi">Burundi</option>
							<option value="Bután">Bután</option>
							<option value="Cabo Verde">Cabo Verde</option>
							<option value="Camboya">Camboya</option>
							<option value="Camerún">Camerún</option>
							<option value="Canadá">Canadá</option>
							<option value="Chad">Chad</option>
							<option value="Chile">Chile</option>
							<option value="China">China</option>
							<option value="Chipre">Chipre</option>
							<option value="Ciudad del Vaticano">Ciudad del Vaticano (Santa Sede)</option>
							<option value="Colombia">Colombia</option>
							<option value="Comores">Comores</option>
							<option value="Congo">Congo</option>
							<option value="CD">Congo, República Democrática del</option>
							<option value="Corea">Corea</option>
							<option value="Corea del Norte">Corea del Norte</option>
							<option value="Costa de Marfíl">Costa de Marfíl</option>
							<option value="Costa Rica">Costa Rica</option>
							<option value="Croacia">Croacia (Hrvatska)</option>
							<option value="Cuba">Cuba</option>
							<option value="Dinamarca">Dinamarca</option>
							<option value="Djibouti">Djibouti</option>
							<option value="Dominica">Dominica</option>
							<option value="Ecuador">Ecuador</option>
							<option value="Egipto">Egipto</option>
							<option value="El Salvador">El Salvador</option>
							<option value="Emiratos Árabes Unidos">Emiratos Árabes Unidos</option>
							<option value="Eritrea">Eritrea</option>
							<option value="Eslovenia">Eslovenia</option>
							<option value="España">España</option>
							<option value="Estados Unidos">Estados Unidos</option>
							<option value="Estonia">Estonia</option>
							<option value="Etiopía">Etiopía</option>
							<option value="Fiji">Fiji</option>
							<option value="Filipinas">Filipinas</option>
							<option value="Finlandia">Finlandia</option>
							<option value="Francia">Francia</option>
							<option value="Gabón">Gabón</option>
							<option value="Gambia">Gambia</option>
							<option value="Georgia">Georgia</option>
							<option value="Ghana">Ghana</option>
							<option value="Gibraltar">Gibraltar</option>
							<option value="Granada">Granada</option>
							<option value="Grecia">Grecia</option>
							<option value="Groenlandia">Groenlandia</option>
							<option value="Guadalupe">Guadalupe</option>
							<option value="Guam">Guam</option>
							<option value="Guatemala">Guatemala</option>
							<option value="Guayana">Guayana</option>
							<option value="Guayana Francesa">Guayana Francesa</option>
							<option value="Guinea">Guinea</option>
							<option value="Guinea Ecuatorial">Guinea Ecuatorial</option>
							<option value="Guinea-Bissau">Guinea-Bissau</option>
							<option value="Haití">Haití</option>
							<option value="Honduras">Honduras</option>
							<option value="Hungría">Hungría</option>
							<option value="India">India</option>
							<option value="Indonesia">Indonesia</option>
							<option value="Irak">Irak</option>
							<option value="Irán">Irán</option>
							<option value="Irlanda">Irlanda</option>
							<option value="Isla Bouvet">Isla Bouvet</option>
							<option value="Isla de Christmas">Isla de Christmas</option>
							<option value="Islandia">Islandia</option>
							<option value="Islas Caimán">Islas Caimán</option>
							<option value="Islas Cook">Islas Cook</option>
							<option value="Islas de Cocos o Keeling">Islas de Cocos o Keeling</option>
							<option value="Islas Faroe">Islas Faroe</option>
							<option value="Islas Heard y McDonald">Islas Heard y McDonald</option>
							<option value="Islas Malvinas">Islas Malvinas</option>
							<option value="Islas Marianas del Norte">Islas Marianas del Norte</option>
							<option value="Islas Marshall">Islas Marshall</option>
							<option value="Islas menores de Estados Unidos">Islas menores de Estados Unidos</option>
							<option value="Islas Palau">Islas Palau</option>
							<option value="Islas Salomón">Islas Salomón</option>
							<option value="Islas Svalbard y Jan Mayen">Islas Svalbard y Jan Mayen</option>
							<option value="Islas Tokelau">Islas Tokelau</option>
							<option value="Islas Turks y Caicos">Islas Turks y Caicos</option>
							<option value="Islas Vírgenes (EEUU)">Islas Vírgenes (EEUU)</option>
							<option value="Islas Vírgenes (Reino Unido)">Islas Vírgenes (Reino Unido)</option>
							<option value="Islas Wallis y Futuna">Islas Wallis y Futuna</option>
							<option value="Israel">Israel</option>
							<option value="Italia">Italia</option>
							<option value="Jamaica">Jamaica</option>
							<option value="Japón">Japón</option>
							<option value="Jordania">Jordania</option>
							<option value="Kazajistán">Kazajistán</option>
							<option value="Kenia">Kenia</option>
							<option value="Kirguizistán">Kirguizistán</option>
							<option value="Kiribati">Kiribati</option>
							<option value="Kuwait">Kuwait</option>
							<option value="Laos">Laos</option>
							<option value="Lesotho">Lesotho</option>
							<option value="Letonia">Letonia</option>
							<option value="Líbano">Líbano</option>
							<option value="Liberia">Liberia</option>
							<option value="Libia">Libia</option>
							<option value="Liechtenstein">Liechtenstein</option>
							<option value="Lituania">Lituania</option>
							<option value="Luxemburgo">Luxemburgo</option>
							<option value="Macedonia">Macedonia, Ex-República Yugoslava de</option>
							<option value="Madagascar">Madagascar</option>
							<option value="Malasia">Malasia</option>
							<option value="Malawi">Malawi</option>
							<option value="Maldivas">Maldivas</option>
							<option value="Malí">Malí</option>
							<option value="Malta">Malta</option>
							<option value="Marruecos">Marruecos</option>
							<option value="Martinica">Martinica</option>
							<option value="Mauricio">Mauricio</option>
							<option value="Mauritania">Mauritania</option>
							<option value="Mayotte">Mayotte</option>
							<option value="México">México</option>
							<option value="Micronesia">Micronesia</option>
							<option value="Moldavia">Moldavia</option>
							<option value="Mónaco">Mónaco</option>
							<option value="Mongolia">Mongolia</option>
							<option value="Montserrat">Montserrat</option>
							<option value="Mozambique">Mozambique</option>
							<option value="Namibia">Namibia</option>
							<option value="Nauru">Nauru</option>
							<option value="Nepal">Nepal</option>
							<option value="Nicaragua">Nicaragua</option>
							<option value="Níger">Níger</option>
							<option value="Nigeria">Nigeria</option>
							<option value="Niue">Niue</option>
							<option value="Norfolk">Norfolk</option>
							<option value="Noruega">Noruega</option>
							<option value="Nueva Caledonia">Nueva Caledonia</option>
							<option value="Nueva Zelanda">Nueva Zelanda</option>
							<option value="Omán">Omán</option>
							<option value="Países Bajos">Países Bajos</option>
							<option value="Panamá">Panamá</option>
							<option value="Papúa Nueva Guinea">Papúa Nueva Guinea</option>
							<option value="Paquistán">Paquistán</option>
							<option value="Paraguay">Paraguay</option>
							<option value="Perú">Perú</option>
							<option value="Pitcairn">Pitcairn</option>
							<option value="Polinesia Francesa">Polinesia Francesa</option>
							<option value="Polonia">Polonia</option>
							<option value="Portugal">Portugal</option>
							<option value="Puerto Rico">Puerto Rico</option>
							<option value="Qatar">Qatar</option>
							<option value="Reino Unido">Reino Unido</option>
							<option value="República Centroafricana">República Centroafricana</option>
							<option value="República Checa">República Checa</option>
							<option value="República de Sudáfrica">República de Sudáfrica</option>
							<option value="República Dominicana">República Dominicana</option>
							<option value="República Eslovaca">República Eslovaca</option>
							<option value="Reunión">Reunión</option>
							<option value="Ruanda">Ruanda</option>
							<option value="Rumania">Rumania</option>
							<option value="Rusia">Rusia</option>
							<option value="Sahara Occidental">Sahara Occidental</option>
							<option value="Saint Kitts y Nevis">Saint Kitts y Nevis</option>
							<option value="Samoa">Samoa</option>
							<option value="Samoa Americana">Samoa Americana</option>
							<option value="San Marino">San Marino</option>
							<option value="San Vicente y Granadinas">San Vicente y Granadinas</option>
							<option value="Santa Helena">Santa Helena</option>
							<option value="Santa Lucía">Santa Lucía</option>
							<option value="Santo Tomé y Príncipe">Santo Tomé y Príncipe</option>
							<option value="Senegal">Senegal</option>
							<option value="Seychelles">Seychelles</option>
							<option value="Sierra Leona">Sierra Leona</option>
							<option value="Singapur">Singapur</option>
							<option value="Siria">Siria</option>
							<option value="Somalia">Somalia</option>
							<option value="Sri Lanka">Sri Lanka</option>
							<option value="St Pierre y Miquelon">St Pierre y Miquelon</option>
							<option value="Suazilandia">Suazilandia</option>
							<option value="Sudán">Sudán</option>
							<option value="Suecia">Suecia</option>
							<option value="Suiza">Suiza</option>
							<option value="Surinam">Surinam</option>
							<option value="Tailandia">Tailandia</option>
							<option value="Taiwán">Taiwán</option>
							<option value="Tanzania">Tanzania</option>
							<option value="Tayikistán">Tayikistán</option>
							<option value="Territorios franceses del Sur">Territorios franceses del Sur</option>
							<option value="Timor Oriental">Timor Oriental</option>
							<option value="Togo">Togo</option>
							<option value="Tonga">Tonga</option>
							<option value="Trinidad y Tobago">Trinidad y Tobago</option>
							<option value="Túnez">Túnez</option>
							<option value="Turkmenistán">Turkmenistán</option>
							<option value="Turquía">Turquía</option>
							<option value="Tuvalu">Tuvalu</option>
							<option value="Ucrania">Ucrania</option>
							<option value="Uganda">Uganda</option>
							<option value="Uruguay">Uruguay</option>
							<option value="Uzbekistán">Uzbekistán</option>
							<option value="Vanuatu">Vanuatu</option>
							<option value="Venezuela">Venezuela</option>
							<option value="Vietnam">Vietnam</option>
							<option value="Yemen">Yemen</option>
							<option value="Yugoslavia">Yugoslavia</option>
							<option value="Zambia">Zambia</option>
							<option value="Zimbabue">Zimbabue</option>
						</select>
						</select>
						<form:errors cssClass="error" path="nacionalidad"></form:errors>
					</div>



					<!-- CUIL/CUIT -->
					<div class="form-group">
						<label for="inputCuil">CUIL/CUIT</label> <input type="text"
							class="form-control" id="CUIL_CUIT" path="CUIL_CUIT"
							name="CUIL_CUIT" placeholder="CUIL/CUIT">
						<form:errors cssClass="error" path="CUIL"></form:errors>
					</div>


					<!-- DOMICILIO -->
					<div class="form-group">
						<label for="inputDomicilio">Domicilio</label> <input type="text"
							class="form-control" path="domicilio" id="domicilio "
							name="domicilio" placeholder="Domicilio" >
						<form:errors cssClass="error" path="domicilio"></form:errors>
					</div>
					
					<!-- DEPARTAMENTO -->
					<div class="form-group">
						<label for="inputDepartamento">Departamento</label> <input type="text"
							class="form-control" path="departamento" id="departamento"
							name="departamento" placeholder="Departamento">
						<form:errors cssClass="error" path="departamento"></form:errors>
					</div>

						<!-- PROVINCIA -->
					<div class="form-group">
						<label for="inputProvincia">Provincia</label> <input type="text"
							class="form-control" path="provincia" id="provincia"
							name="provincia" placeholder="Provincia">
						<form:errors cssClass="error" path="provincia"></form:errors>
					</div>
					
							<!-- PAIS -->
						<div class="form-group">
						<label for="inputPais">Pais</label> <select
							class="form-control" id="pais" path="pais"
							name="pais" placeholder="pais" value="${pais}">
							
							<option value="Afganistán">Afganistán</option>
							<option value="Albania">Albania</option>
							<option value="Alemania">Alemania</option>
							<option value="Andorra">Andorra</option>
							<option value="Angola">Angola</option>
							<option value="Anguilla">Anguilla</option>
							<option value="Antartida">Antártida</option>
							<option value="Antigua y Barbuda">Antigua y Barbuda</option>
							<option value="Antillas Holandesas">Antillas Holandesas</option>
							<option value="Arabia Saudí">Arabia Saudí</option>
							<option value="Argelia">Argelia</option>
							<option value="Argentina" selected>Argentina</option>
							<option value="Armenia">Armenia</option>
							<option value="Aruba">Aruba</option>
							<option value="Australia">Australia</option>
							<option value="Austria">Austria</option>
							<option value="Azerbaiyán">Azerbaiyán</option>
							<option value="Bahamas">Bahamas</option>
							<option value="Bahrein">Bahrein</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="Barbados">Barbados</option>
							<option value="Bélgica">Bélgica</option>
							<option value="Belice">Belice</option>
							<option value="Benin">Benin</option>
							<option value="Bermudas">Bermudas</option>
							<option value="Bielorrusia">Bielorrusia</option>
							<option value="Birmania">Birmania</option>
							<option value="Bolivia">Bolivia</option>
							<option value="Bosnia y Herzegovina">Bosnia y Herzegovina</option>
							<option value="Botswana">Botswana</option>
							<option value="Brasil">Brasil</option>
							<option value="Brunei">Brunei</option>
							<option value="Bulgaria">Bulgaria</option>
							<option value="Burkina Faso">Burkina Faso</option>
							<option value="Burundi">Burundi</option>
							<option value="Bután">Bután</option>
							<option value="Cabo Verde">Cabo Verde</option>
							<option value="Camboya">Camboya</option>
							<option value="Camerún">Camerún</option>
							<option value="Canadá">Canadá</option>
							<option value="Chad">Chad</option>
							<option value="Chile">Chile</option>
							<option value="China">China</option>
							<option value="Chipre">Chipre</option>
							<option value="Ciudad del Vaticano">Ciudad del Vaticano (Santa Sede)</option>
							<option value="Colombia">Colombia</option>
							<option value="Comores">Comores</option>
							<option value="Congo">Congo</option>
							<option value="CD">Congo, República Democrática del</option>
							<option value="Corea">Corea</option>
							<option value="Corea del Norte">Corea del Norte</option>
							<option value="Costa de Marfíl">Costa de Marfíl</option>
							<option value="Costa Rica">Costa Rica</option>
							<option value="Croacia">Croacia (Hrvatska)</option>
							<option value="Cuba">Cuba</option>
							<option value="Dinamarca">Dinamarca</option>
							<option value="Djibouti">Djibouti</option>
							<option value="Dominica">Dominica</option>
							<option value="Ecuador">Ecuador</option>
							<option value="Egipto">Egipto</option>
							<option value="El Salvador">El Salvador</option>
							<option value="Emiratos Árabes Unidos">Emiratos Árabes Unidos</option>
							<option value="Eritrea">Eritrea</option>
							<option value="Eslovenia">Eslovenia</option>
							<option value="España">España</option>
							<option value="Estados Unidos">Estados Unidos</option>
							<option value="Estonia">Estonia</option>
							<option value="Etiopía">Etiopía</option>
							<option value="Fiji">Fiji</option>
							<option value="Filipinas">Filipinas</option>
							<option value="Finlandia">Finlandia</option>
							<option value="Francia">Francia</option>
							<option value="Gabón">Gabón</option>
							<option value="Gambia">Gambia</option>
							<option value="Georgia">Georgia</option>
							<option value="Ghana">Ghana</option>
							<option value="Gibraltar">Gibraltar</option>
							<option value="Granada">Granada</option>
							<option value="Grecia">Grecia</option>
							<option value="Groenlandia">Groenlandia</option>
							<option value="Guadalupe">Guadalupe</option>
							<option value="Guam">Guam</option>
							<option value="Guatemala">Guatemala</option>
							<option value="Guayana">Guayana</option>
							<option value="Guayana Francesa">Guayana Francesa</option>
							<option value="Guinea">Guinea</option>
							<option value="Guinea Ecuatorial">Guinea Ecuatorial</option>
							<option value="Guinea-Bissau">Guinea-Bissau</option>
							<option value="Haití">Haití</option>
							<option value="Honduras">Honduras</option>
							<option value="Hungría">Hungría</option>
							<option value="India">India</option>
							<option value="Indonesia">Indonesia</option>
							<option value="Irak">Irak</option>
							<option value="Irán">Irán</option>
							<option value="Irlanda">Irlanda</option>
							<option value="Isla Bouvet">Isla Bouvet</option>
							<option value="Isla de Christmas">Isla de Christmas</option>
							<option value="Islandia">Islandia</option>
							<option value="Islas Caimán">Islas Caimán</option>
							<option value="Islas Cook">Islas Cook</option>
							<option value="Islas de Cocos o Keeling">Islas de Cocos o Keeling</option>
							<option value="Islas Faroe">Islas Faroe</option>
							<option value="Islas Heard y McDonald">Islas Heard y McDonald</option>
							<option value="Islas Malvinas">Islas Malvinas</option>
							<option value="Islas Marianas del Norte">Islas Marianas del Norte</option>
							<option value="Islas Marshall">Islas Marshall</option>
							<option value="Islas menores de Estados Unidos">Islas menores de Estados Unidos</option>
							<option value="Islas Palau">Islas Palau</option>
							<option value="Islas Salomón">Islas Salomón</option>
							<option value="Islas Svalbard y Jan Mayen">Islas Svalbard y Jan Mayen</option>
							<option value="Islas Tokelau">Islas Tokelau</option>
							<option value="Islas Turks y Caicos">Islas Turks y Caicos</option>
							<option value="Islas Vírgenes (EEUU)">Islas Vírgenes (EEUU)</option>
							<option value="Islas Vírgenes (Reino Unido)">Islas Vírgenes (Reino Unido)</option>
							<option value="Islas Wallis y Futuna">Islas Wallis y Futuna</option>
							<option value="Israel">Israel</option>
							<option value="Italia">Italia</option>
							<option value="Jamaica">Jamaica</option>
							<option value="Japón">Japón</option>
							<option value="Jordania">Jordania</option>
							<option value="Kazajistán">Kazajistán</option>
							<option value="Kenia">Kenia</option>
							<option value="Kirguizistán">Kirguizistán</option>
							<option value="Kiribati">Kiribati</option>
							<option value="Kuwait">Kuwait</option>
							<option value="Laos">Laos</option>
							<option value="Lesotho">Lesotho</option>
							<option value="Letonia">Letonia</option>
							<option value="Líbano">Líbano</option>
							<option value="Liberia">Liberia</option>
							<option value="Libia">Libia</option>
							<option value="Liechtenstein">Liechtenstein</option>
							<option value="Lituania">Lituania</option>
							<option value="Luxemburgo">Luxemburgo</option>
							<option value="Macedonia">Macedonia, Ex-República Yugoslava de</option>
							<option value="Madagascar">Madagascar</option>
							<option value="Malasia">Malasia</option>
							<option value="Malawi">Malawi</option>
							<option value="Maldivas">Maldivas</option>
							<option value="Malí">Malí</option>
							<option value="Malta">Malta</option>
							<option value="Marruecos">Marruecos</option>
							<option value="Martinica">Martinica</option>
							<option value="Mauricio">Mauricio</option>
							<option value="Mauritania">Mauritania</option>
							<option value="Mayotte">Mayotte</option>
							<option value="México">México</option>
							<option value="Micronesia">Micronesia</option>
							<option value="Moldavia">Moldavia</option>
							<option value="Mónaco">Mónaco</option>
							<option value="Mongolia">Mongolia</option>
							<option value="Montserrat">Montserrat</option>
							<option value="Mozambique">Mozambique</option>
							<option value="Namibia">Namibia</option>
							<option value="Nauru">Nauru</option>
							<option value="Nepal">Nepal</option>
							<option value="Nicaragua">Nicaragua</option>
							<option value="Níger">Níger</option>
							<option value="Nigeria">Nigeria</option>
							<option value="Niue">Niue</option>
							<option value="Norfolk">Norfolk</option>
							<option value="Noruega">Noruega</option>
							<option value="Nueva Caledonia">Nueva Caledonia</option>
							<option value="Nueva Zelanda">Nueva Zelanda</option>
							<option value="Omán">Omán</option>
							<option value="Países Bajos">Países Bajos</option>
							<option value="Panamá">Panamá</option>
							<option value="Papúa Nueva Guinea">Papúa Nueva Guinea</option>
							<option value="Paquistán">Paquistán</option>
							<option value="Paraguay">Paraguay</option>
							<option value="Perú">Perú</option>
							<option value="Pitcairn">Pitcairn</option>
							<option value="Polinesia Francesa">Polinesia Francesa</option>
							<option value="Polonia">Polonia</option>
							<option value="Portugal">Portugal</option>
							<option value="Puerto Rico">Puerto Rico</option>
							<option value="Qatar">Qatar</option>
							<option value="Reino Unido">Reino Unido</option>
							<option value="República Centroafricana">República Centroafricana</option>
							<option value="República Checa">República Checa</option>
							<option value="República de Sudáfrica">República de Sudáfrica</option>
							<option value="República Dominicana">República Dominicana</option>
							<option value="República Eslovaca">República Eslovaca</option>
							<option value="Reunión">Reunión</option>
							<option value="Ruanda">Ruanda</option>
							<option value="Rumania">Rumania</option>
							<option value="Rusia">Rusia</option>
							<option value="Sahara Occidental">Sahara Occidental</option>
							<option value="Saint Kitts y Nevis">Saint Kitts y Nevis</option>
							<option value="Samoa">Samoa</option>
							<option value="Samoa Americana">Samoa Americana</option>
							<option value="San Marino">San Marino</option>
							<option value="San Vicente y Granadinas">San Vicente y Granadinas</option>
							<option value="Santa Helena">Santa Helena</option>
							<option value="Santa Lucía">Santa Lucía</option>
							<option value="Santo Tomé y Príncipe">Santo Tomé y Príncipe</option>
							<option value="Senegal">Senegal</option>
							<option value="Seychelles">Seychelles</option>
							<option value="Sierra Leona">Sierra Leona</option>
							<option value="Singapur">Singapur</option>
							<option value="Siria">Siria</option>
							<option value="Somalia">Somalia</option>
							<option value="Sri Lanka">Sri Lanka</option>
							<option value="St Pierre y Miquelon">St Pierre y Miquelon</option>
							<option value="Suazilandia">Suazilandia</option>
							<option value="Sudán">Sudán</option>
							<option value="Suecia">Suecia</option>
							<option value="Suiza">Suiza</option>
							<option value="Surinam">Surinam</option>
							<option value="Tailandia">Tailandia</option>
							<option value="Taiwán">Taiwán</option>
							<option value="Tanzania">Tanzania</option>
							<option value="Tayikistán">Tayikistán</option>
							<option value="Territorios franceses del Sur">Territorios franceses del Sur</option>
							<option value="Timor Oriental">Timor Oriental</option>
							<option value="Togo">Togo</option>
							<option value="Tonga">Tonga</option>
							<option value="Trinidad y Tobago">Trinidad y Tobago</option>
							<option value="Túnez">Túnez</option>
							<option value="Turkmenistán">Turkmenistán</option>
							<option value="Turquía">Turquía</option>
							<option value="Tuvalu">Tuvalu</option>
							<option value="Ucrania">Ucrania</option>
							<option value="Uganda">Uganda</option>
							<option value="Uruguay">Uruguay</option>
							<option value="Uzbekistán">Uzbekistán</option>
							<option value="Vanuatu">Vanuatu</option>
							<option value="Venezuela">Venezuela</option>
							<option value="Vietnam">Vietnam</option>
							<option value="Yemen">Yemen</option>
							<option value="Yugoslavia">Yugoslavia</option>
							<option value="Zambia">Zambia</option>
							<option value="Zimbabue">Zimbabue</option>
						</select>
						<form:errors cssClass="error" path="pais"></form:errors>
					</div>
					<button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>
				</form:form>
					</c:when>	
					<c:otherwise>
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/datosEditar"
					modelAttribute="datos">


					<div class="container">
						<div class="row-fluid">
							<div class="pull-left" >
							<!-- -DNI -->
					<div class="form-group">
						<label for="inputName">DNI:</label>
						<c:out value="${datosPersonales.dni}" />
						<input type="hidden" id="dni"value="${datosPersonales.dni}" path="dni" name="dni">
					</div>
								<!-- NOMBRE -->
								<div class="form-group">
									<label for="inputName">Nombre:</label>
									<c:out value="${datosPersonales.nombre}" />
								</div>

								<!-- APELLIDO -->
								<div class="form-group">
									<label for="inputName">Apellido:</label>
									<c:out value="${datosPersonales.apellido}" />
								</div>
								
								<!-- EMAIL -->
								<div class="form-group">
									<label for="inputName">Email:</label>
									<c:out value="${datosPersonales.email}" />
								</div>
								
								<!-- SEXO -->
								<div class="form-group">
									<label for="inputName">Sexo:</label>
									<c:out value="${datosPersonales.sexo}" />
								</div>
								

								<!-- ESTADO CIVIL -->
								<div class="form-group">
									<label for="inputName">Estado Civil:</label>
									<c:out value="${datosPersonales.estado_civil}" />
								</div>
													
								<!-- FECHA DE NACIMIENTO -->
								<div class="form-group">
									<label for="inputFechaNac">Fecha de Nacimiento:</label>
									<fmt:formatDate pattern="dd/MM/yyyy" value="${datosPersonales.fecha_nac}" />
								</div>

								<!-- EMAIL -->
								<div class="form-group">
									<label for="inputName">Nacionalidad:</label>
									<c:out value="${datosPersonales.nacionalidad}" />
								</div>

								<!-- CUIL/CUIT -->
								<div class="form-group">
									<label for="inputName">CUIL/CUIT:</label>
									<c:out value="${datosPersonales.CUIL_CUIT}" />
								</div>

								<!-- DOMICILIO -->
								<div class="form-group">
									<label for="inputName">Domicilio:</label>
									<c:out value="${datosPersonales.domicilio}" />
								</div>

								<!-- DEPARTAMENTO -->
								<div class="form-group">
									<label for="inputName">Departamento:</label>
									<c:out value="${datosPersonales.departamento}" />
								</div>

								<!-- PRIVINCIA -->
								<div class="form-group">
									<label for="inputName">Provincia:</label>
									<c:out value="${datosPersonales.provincia}" />
								</div>

								<!-- PAIS -->
								<div class="form-group">
									<label for="inputName">País:</label>
									<c:out value="${datosPersonales.pais}" />
								</div>
							</div>
							<div class="span6 pull-right" style="text-align: right">
								<!-- BOTON EDITAR -->
								<div class="form-group">
									<div class="span6 pull-right" style="text-align: right">
										<button type="submit" class="btn btn-default"
											class="btn btn-primary pull-right btn-sm RbtnMargin"
											name="action"  style="margin-right: 40px" value="editar">Editar</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form:form>
				
				
				
				
					</c:otherwise>
			
			</c:choose>
				</div><!--container-->
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
</body>
</html>