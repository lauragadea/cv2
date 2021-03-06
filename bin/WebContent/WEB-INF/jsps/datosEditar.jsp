<%@include file="includes/header.jsp" %>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>

				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/modificardatos"
					modelAttribute="dp">

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

					<!-- DNI  -->
					<div class="form-group">
						<label for="dni">DNI <input type="text" id="dni"
							class="form-control" path="dni" name="dni" placeholder="DNI"
							value="${datosPersonales.dni}" readonly></label>
					</div>

					<!-- NOMBRE -->
					<div class="form-group">
						<label for="inputName">Nombre</label> <input type="text"
							id="nombre" class="form-control" path="nombre" name="nombre"
							placeholder="Nombre" value="${datosPersonales.nombre}">
						<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

					<!-- APELLIDO -->
					<div class="form-group">
						<label for="inputApellido">Apellido</label> <input type="text"
							class="form-control" id="alu_apellido" path="apellido"
							name="apellido" placeholder="Apellido" value="${datosPersonales.apellido}">
						<form:errors cssClass="error" path="apellido"></form:errors>
					</div>

					<!-- SEXO -->
					<div class="form-group">
						<div class="dropdown">
							<label for="inputNumDoc">Sexo</label><br> 
							<select class="form-control" id="sexo" name="sexo" value="${sexo}">
								    <c:forEach items="${sexo}" var="sex">
								        <option value="${sex.key}" ${sex.key == sex ? 'selected' : ''}>${sex.value}</option>
								    </c:forEach>
							</select>													
						</div>
					</div>

					<!-- ESTADO CIVIL -->
					<div class="form-group">
						<label for="inputEstadoCivil">Estado civil</label> 
						<select class="form-control" id="estado_civil" name="estado_civil" value="${datosPersonales.estado_civil}">
						    <c:forEach items="${estado_civil}" var="ec">
						        <option value="${ec.key}" ${ec.key == datosPersonales.estado_civil ? 'selected' : ''}>${ec.value}</option>
						    </c:forEach>
							</select>							
						<form:errors cssClass="error" path="estado_civil"></form:errors>
					</div>
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
					
					
					<!-- EMAIL -->
					<div class="form-group">
						<label for="inputEmail">Email</label> <input type="email"
							class="form-control" id="email" path="email" name="email"
							placeholder="Email" value="${datosPersonales.email}">
						<form:errors cssClass="error" path="email"></form:errors>
					</div>

					<!-- FECHA DE NACIMIENTO -->
					

					<div class="form-group">
						<label for="inputNacionalidad">Nacionalidad</label> <select
							class="form-control" id="nacionalidad" path="nacionalidad"
							name="nacionalidad" placeholder="nacionalidad"
							value="${datosPersonales.nacionalidad}">
							<option value="${datosPersonales.nacionalidad}" label="${datosPersonales.nacionalidad}" selected></option>
									<option value="Afganist�n">Afganist�n</option>
							<option value="Albania">Albania</option>
							<option value="Alemania">Alemania</option>
							<option value="Andorra">Andorra</option>
							<option value="Angola">Angola</option>
							<option value="Anguilla">Anguilla</option>
							<option value="Antartida">Ant�rtida</option>
							<option value="Antigua y Barbuda">Antigua y Barbuda</option>
							<option value="Antillas Holandesas">Antillas Holandesas</option>
							<option value="Arabia Saud�">Arabia Saud�</option>
							<option value="Argelia">Argelia</option>
							<option value="Argentina" selected>Argentina</option>
							<option value="Armenia">Armenia</option>
							<option value="Aruba">Aruba</option>
							<option value="Australia">Australia</option>
							<option value="Austria">Austria</option>
							<option value="Azerbaiy�n">Azerbaiy�n</option>
							<option value="Bahamas">Bahamas</option>
							<option value="Bahrein">Bahrein</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="Barbados">Barbados</option>
							<option value="B�lgica">B�lgica</option>
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
							<option value="But�n">But�n</option>
							<option value="Cabo Verde">Cabo Verde</option>
							<option value="Camboya">Camboya</option>
							<option value="Camer�n">Camer�n</option>
							<option value="Canad�">Canad�</option>
							<option value="Chad">Chad</option>
							<option value="Chile">Chile</option>
							<option value="China">China</option>
							<option value="Chipre">Chipre</option>
							<option value="Ciudad del Vaticano">Ciudad del Vaticano (Santa Sede)</option>
							<option value="Colombia">Colombia</option>
							<option value="Comores">Comores</option>
							<option value="Congo">Congo</option>
							<option value="CD">Congo, Rep�blica Democr�tica del</option>
							<option value="Corea">Corea</option>
							<option value="Corea del Norte">Corea del Norte</option>
							<option value="Costa de Marf�l">Costa de Marf�l</option>
							<option value="Costa Rica">Costa Rica</option>
							<option value="Croacia">Croacia (Hrvatska)</option>
							<option value="Cuba">Cuba</option>
							<option value="Dinamarca">Dinamarca</option>
							<option value="Djibouti">Djibouti</option>
							<option value="Dominica">Dominica</option>
							<option value="Ecuador">Ecuador</option>
							<option value="Egipto">Egipto</option>
							<option value="El Salvador">El Salvador</option>
							<option value="Emiratos �rabes Unidos">Emiratos �rabes Unidos</option>
							<option value="Eritrea">Eritrea</option>
							<option value="Eslovenia">Eslovenia</option>
							<option value="Espa�a">Espa�a</option>
							<option value="Estados Unidos">Estados Unidos</option>
							<option value="Estonia">Estonia</option>
							<option value="Etiop�a">Etiop�a</option>
							<option value="Fiji">Fiji</option>
							<option value="Filipinas">Filipinas</option>
							<option value="Finlandia">Finlandia</option>
							<option value="Francia">Francia</option>
							<option value="Gab�n">Gab�n</option>
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
							<option value="Hait�">Hait�</option>
							<option value="Honduras">Honduras</option>
							<option value="Hungr�a">Hungr�a</option>
							<option value="India">India</option>
							<option value="Indonesia">Indonesia</option>
							<option value="Irak">Irak</option>
							<option value="Ir�n">Ir�n</option>
							<option value="Irlanda">Irlanda</option>
							<option value="Isla Bouvet">Isla Bouvet</option>
							<option value="Isla de Christmas">Isla de Christmas</option>
							<option value="Islandia">Islandia</option>
							<option value="Islas Caim�n">Islas Caim�n</option>
							<option value="Islas Cook">Islas Cook</option>
							<option value="Islas de Cocos o Keeling">Islas de Cocos o Keeling</option>
							<option value="Islas Faroe">Islas Faroe</option>
							<option value="Islas Heard y McDonald">Islas Heard y McDonald</option>
							<option value="Islas Malvinas">Islas Malvinas</option>
							<option value="Islas Marianas del Norte">Islas Marianas del Norte</option>
							<option value="Islas Marshall">Islas Marshall</option>
							<option value="Islas menores de Estados Unidos">Islas menores de Estados Unidos</option>
							<option value="Islas Palau">Islas Palau</option>
							<option value="Islas Salom�n">Islas Salom�n</option>
							<option value="Islas Svalbard y Jan Mayen">Islas Svalbard y Jan Mayen</option>
							<option value="Islas Tokelau">Islas Tokelau</option>
							<option value="Islas Turks y Caicos">Islas Turks y Caicos</option>
							<option value="Islas V�rgenes (EEUU)">Islas V�rgenes (EEUU)</option>
							<option value="Islas V�rgenes (Reino Unido)">Islas V�rgenes (Reino Unido)</option>
							<option value="Islas Wallis y Futuna">Islas Wallis y Futuna</option>
							<option value="Israel">Israel</option>
							<option value="Italia">Italia</option>
							<option value="Jamaica">Jamaica</option>
							<option value="Jap�n">Jap�n</option>
							<option value="Jordania">Jordania</option>
							<option value="Kazajist�n">Kazajist�n</option>
							<option value="Kenia">Kenia</option>
							<option value="Kirguizist�n">Kirguizist�n</option>
							<option value="Kiribati">Kiribati</option>
							<option value="Kuwait">Kuwait</option>
							<option value="Laos">Laos</option>
							<option value="Lesotho">Lesotho</option>
							<option value="Letonia">Letonia</option>
							<option value="L�bano">L�bano</option>
							<option value="Liberia">Liberia</option>
							<option value="Libia">Libia</option>
							<option value="Liechtenstein">Liechtenstein</option>
							<option value="Lituania">Lituania</option>
							<option value="Luxemburgo">Luxemburgo</option>
							<option value="Macedonia">Macedonia, Ex-Rep�blica Yugoslava de</option>
							<option value="Madagascar">Madagascar</option>
							<option value="Malasia">Malasia</option>
							<option value="Malawi">Malawi</option>
							<option value="Maldivas">Maldivas</option>
							<option value="Mal�">Mal�</option>
							<option value="Malta">Malta</option>
							<option value="Marruecos">Marruecos</option>
							<option value="Martinica">Martinica</option>
							<option value="Mauricio">Mauricio</option>
							<option value="Mauritania">Mauritania</option>
							<option value="Mayotte">Mayotte</option>
							<option value="M�xico">M�xico</option>
							<option value="Micronesia">Micronesia</option>
							<option value="Moldavia">Moldavia</option>
							<option value="M�naco">M�naco</option>
							<option value="Mongolia">Mongolia</option>
							<option value="Montserrat">Montserrat</option>
							<option value="Mozambique">Mozambique</option>
							<option value="Namibia">Namibia</option>
							<option value="Nauru">Nauru</option>
							<option value="Nepal">Nepal</option>
							<option value="Nicaragua">Nicaragua</option>
							<option value="N�ger">N�ger</option>
							<option value="Nigeria">Nigeria</option>
							<option value="Niue">Niue</option>
							<option value="Norfolk">Norfolk</option>
							<option value="Noruega">Noruega</option>
							<option value="Nueva Caledonia">Nueva Caledonia</option>
							<option value="Nueva Zelanda">Nueva Zelanda</option>
							<option value="Om�n">Om�n</option>
							<option value="Pa�ses Bajos">Pa�ses Bajos</option>
							<option value="Panam�">Panam�</option>
							<option value="Pap�a Nueva Guinea">Pap�a Nueva Guinea</option>
							<option value="Paquist�n">Paquist�n</option>
							<option value="Paraguay">Paraguay</option>
							<option value="Per�">Per�</option>
							<option value="Pitcairn">Pitcairn</option>
							<option value="Polinesia Francesa">Polinesia Francesa</option>
							<option value="Polonia">Polonia</option>
							<option value="Portugal">Portugal</option>
							<option value="Puerto Rico">Puerto Rico</option>
							<option value="Qatar">Qatar</option>
							<option value="Reino Unido">Reino Unido</option>
							<option value="Rep�blica Centroafricana">Rep�blica Centroafricana</option>
							<option value="Rep�blica Checa">Rep�blica Checa</option>
							<option value="Rep�blica de Sud�frica">Rep�blica de Sud�frica</option>
							<option value="Rep�blica Dominicana">Rep�blica Dominicana</option>
							<option value="Rep�blica Eslovaca">Rep�blica Eslovaca</option>
							<option value="Reuni�n">Reuni�n</option>
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
							<option value="Santa Luc�a">Santa Luc�a</option>
							<option value="Santo Tom� y Pr�ncipe">Santo Tom� y Pr�ncipe</option>
							<option value="Senegal">Senegal</option>
							<option value="Seychelles">Seychelles</option>
							<option value="Sierra Leona">Sierra Leona</option>
							<option value="Singapur">Singapur</option>
							<option value="Siria">Siria</option>
							<option value="Somalia">Somalia</option>
							<option value="Sri Lanka">Sri Lanka</option>
							<option value="St Pierre y Miquelon">St Pierre y Miquelon</option>
							<option value="Suazilandia">Suazilandia</option>
							<option value="Sud�n">Sud�n</option>
							<option value="Suecia">Suecia</option>
							<option value="Suiza">Suiza</option>
							<option value="Surinam">Surinam</option>
							<option value="Tailandia">Tailandia</option>
							<option value="Taiw�n">Taiw�n</option>
							<option value="Tanzania">Tanzania</option>
							<option value="Tayikist�n">Tayikist�n</option>
							<option value="Territorios franceses del Sur">Territorios franceses del Sur</option>
							<option value="Timor Oriental">Timor Oriental</option>
							<option value="Togo">Togo</option>
							<option value="Tonga">Tonga</option>
							<option value="Trinidad y Tobago">Trinidad y Tobago</option>
							<option value="T�nez">T�nez</option>
							<option value="Turkmenist�n">Turkmenist�n</option>
							<option value="Turqu�a">Turqu�a</option>
							<option value="Tuvalu">Tuvalu</option>
							<option value="Ucrania">Ucrania</option>
							<option value="Uganda">Uganda</option>
							<option value="Uruguay">Uruguay</option>
							<option value="Uzbekist�n">Uzbekist�n</option>
							<option value="Vanuatu">Vanuatu</option>
							<option value="Venezuela">Venezuela</option>
							<option value="Vietnam">Vietnam</option>
							<option value="Yemen">Yemen</option>
							<option value="Yugoslavia">Yugoslavia</option>
							<option value="Zambia">Zambia</option>
							<option value="Zimbabue">Zimbabue</option>
						</select>
						<form:errors cssClass="error" path="nacionalidad"></form:errors>
					</div>



					<!-- CUIL/CUIT -->
					<div class="form-group">
						<label for="inputCuil">CUIL/CUIT</label> <input type="text"
							class="form-control" id="CUIL_CUIT" path="CUIL_CUIT"
							name="CUIL_CUIT" placeholder="CUIL/CUIT" value="${datosPersonales.CUIL_CUIT}">
						<form:errors cssClass="error" path="CUIL"></form:errors>
					</div>


					<!-- DOMICILIO -->
					<div class="form-group">
						<label for="inputDomicilio">Domicilio</label> <input type="text"
							class="form-control" path="domicilio" id="domicilio "
							name="domicilio" placeholder="Domicilio" value="${datosPersonales.domicilio}">
						<form:errors cssClass="error" path="domicilio"></form:errors>
					</div>

					<!-- DEPARTAMENTO -->
					<div class="form-group">
						<label for="inputDepartamento">Departamento</label> <input
							type="text" class="form-control" path="departamento"
							id="departamento" name="departamento" placeholder="Departamento"
							value="${datosPersonales.departamento}">
						<form:errors cssClass="error" path="departamento"></form:errors>
					</div>

					<!-- PROVINCIA -->
					<div class="form-group">
						<label for="inputProvincia">Provincia</label> <input type="text"
							class="form-control" path="provincia" id="provincia"
							name="provincia" placeholder="Provincia" value="${datosPersonales.provincia}">
						<form:errors cssClass="error" path="provincia"></form:errors>
					</div>

					<!-- PAIS -->
					<div class="form-group">
						<label for="inputPais">Pais</label> <select
							class="form-control" id="pais" path="pais"
							name="pais" placeholder="pais"
							value="${datosPersonales.pais}">
							<option value="${datosPersonales.pais}" label="${datosPersonales.pais}" selected></option>
							<option value="AF">Afganist�n</option>
							<option value="AL">Albania</option>
							<option value="DE">Alemania</option>
							<option value="AD">Andorra</option>
							<option value="AO">Angola</option>
							<option value="AI">Anguilla</option>
							<option value="AQ">Ant�rtida</option>
							<option value="AG">Antigua y Barbuda</option>
							<option value="AN">Antillas Holandesas</option>
							<option value="SA">Arabia Saud�</option>
							<option value="DZ">Argelia</option>
							<option value="AR">Argentina</option>
							<option value="AM">Armenia</option>
							<option value="AW">Aruba</option>
							<option value="AU">Australia</option>
							<option value="AT">Austria</option>
							<option value="AZ">Azerbaiy�n</option>
							<option value="BS">Bahamas</option>
							<option value="BH">Bahrein</option>
							<option value="BD">Bangladesh</option>
							<option value="BB">Barbados</option>
							<option value="BE">B�lgica</option>
							<option value="BZ">Belice</option>
							<option value="BJ">Benin</option>
							<option value="BM">Bermudas</option>
							<option value="BY">Bielorrusia</option>
							<option value="MM">Birmania</option>
							<option value="BO">Bolivia</option>
							<option value="BA">Bosnia y Herzegovina</option>
							<option value="BW">Botswana</option>
							<option value="BR">Brasil</option>
							<option value="BN">Brunei</option>
							<option value="BG">Bulgaria</option>
							<option value="BF">Burkina Faso</option>
							<option value="BI">Burundi</option>
							<option value="BT">But�n</option>
							<option value="CV">Cabo Verde</option>
							<option value="KH">Camboya</option>
							<option value="CM">Camer�n</option>
							<option value="CA">Canad�</option>
							<option value="TD">Chad</option>
							<option value="CL">Chile</option>
							<option value="CN">China</option>
							<option value="CY">Chipre</option>
							<option value="VA">Ciudad del Vaticano (Santa Sede)</option>
							<option value="CO">Colombia</option>
							<option value="KM">Comores</option>
							<option value="CG">Congo</option>
							<option value="CD">Congo, Rep�blica Democr�tica del</option>
							<option value="KR">Corea</option>
							<option value="KP">Corea del Norte</option>
							<option value="CI">Costa de Marf�l</option>
							<option value="CR">Costa Rica</option>
							<option value="HR">Croacia (Hrvatska)</option>
							<option value="CU">Cuba</option>
							<option value="DK">Dinamarca</option>
							<option value="DJ">Djibouti</option>
							<option value="DM">Dominica</option>
							<option value="EC">Ecuador</option>
							<option value="EG">Egipto</option>
							<option value="SV">El Salvador</option>
							<option value="AE">Emiratos �rabes Unidos</option>
							<option value="ER">Eritrea</option>
							<option value="SI">Eslovenia</option>
							<option value="ES">Espa�a</option>
							<option value="US">Estados Unidos</option>
							<option value="EE">Estonia</option>
							<option value="ET">Etiop�a</option>
							<option value="FJ">Fiji</option>
							<option value="PH">Filipinas</option>
							<option value="FI">Finlandia</option>
							<option value="FR">Francia</option>
							<option value="GA">Gab�n</option>
							<option value="GM">Gambia</option>
							<option value="GE">Georgia</option>
							<option value="GH">Ghana</option>
							<option value="GI">Gibraltar</option>
							<option value="GD">Granada</option>
							<option value="GR">Grecia</option>
							<option value="GL">Groenlandia</option>
							<option value="GP">Guadalupe</option>
							<option value="GU">Guam</option>
							<option value="GT">Guatemala</option>
							<option value="GY">Guayana</option>
							<option value="GF">Guayana Francesa</option>
							<option value="GN">Guinea</option>
							<option value="GQ">Guinea Ecuatorial</option>
							<option value="GW">Guinea-Bissau</option>
							<option value="HT">Hait�</option>
							<option value="HN">Honduras</option>
							<option value="HU">Hungr�a</option>
							<option value="IN">India</option>
							<option value="ID">Indonesia</option>
							<option value="IQ">Irak</option>
							<option value="IR">Ir�n</option>
							<option value="IE">Irlanda</option>
							<option value="BV">Isla Bouvet</option>
							<option value="CX">Isla de Christmas</option>
							<option value="IS">Islandia</option>
							<option value="KY">Islas Caim�n</option>
							<option value="CK">Islas Cook</option>
							<option value="CC">Islas de Cocos o Keeling</option>
							<option value="FO">Islas Faroe</option>
							<option value="HM">Islas Heard y McDonald</option>
							<option value="FK">Islas Malvinas</option>
							<option value="MP">Islas Marianas del Norte</option>
							<option value="MH">Islas Marshall</option>
							<option value="UM">Islas menores de Estados Unidos</option>
							<option value="PW">Islas Palau</option>
							<option value="SB">Islas Salom�n</option>
							<option value="SJ">Islas Svalbard y Jan Mayen</option>
							<option value="TK">Islas Tokelau</option>
							<option value="TC">Islas Turks y Caicos</option>
							<option value="VI">Islas V�rgenes (EEUU)</option>
							<option value="VG">Islas V�rgenes (Reino Unido)</option>
							<option value="WF">Islas Wallis y Futuna</option>
							<option value="IL">Israel</option>
							<option value="IT">Italia</option>
							<option value="JM">Jamaica</option>
							<option value="JP">Jap�n</option>
							<option value="JO">Jordania</option>
							<option value="KZ">Kazajist�n</option>
							<option value="KE">Kenia</option>
							<option value="KG">Kirguizist�n</option>
							<option value="KI">Kiribati</option>
							<option value="KW">Kuwait</option>
							<option value="LA">Laos</option>
							<option value="LS">Lesotho</option>
							<option value="LV">Letonia</option>
							<option value="LB">L�bano</option>
							<option value="LR">Liberia</option>
							<option value="LY">Libia</option>
							<option value="LI">Liechtenstein</option>
							<option value="LT">Lituania</option>
							<option value="LU">Luxemburgo</option>
							<option value="MK">Macedonia, Ex-Rep�blica Yugoslava de</option>
							<option value="MG">Madagascar</option>
							<option value="MY">Malasia</option>
							<option value="MW">Malawi</option>
							<option value="MV">Maldivas</option>
							<option value="ML">Mal�</option>
							<option value="MT">Malta</option>
							<option value="MA">Marruecos</option>
							<option value="MQ">Martinica</option>
							<option value="MU">Mauricio</option>
							<option value="MR">Mauritania</option>
							<option value="YT">Mayotte</option>
							<option value="MX">M�xico</option>
							<option value="FM">Micronesia</option>
							<option value="MD">Moldavia</option>
							<option value="MC">M�naco</option>
							<option value="MN">Mongolia</option>
							<option value="MS">Montserrat</option>
							<option value="MZ">Mozambique</option>
							<option value="NA">Namibia</option>
							<option value="NR">Nauru</option>
							<option value="NP">Nepal</option>
							<option value="NI">Nicaragua</option>
							<option value="NE">N�ger</option>
							<option value="NG">Nigeria</option>
							<option value="NU">Niue</option>
							<option value="NF">Norfolk</option>
							<option value="NO">Noruega</option>
							<option value="NC">Nueva Caledonia</option>
							<option value="NZ">Nueva Zelanda</option>
							<option value="OM">Om�n</option>
							<option value="NL">Pa�ses Bajos</option>
							<option value="PA">Panam�</option>
							<option value="PG">Pap�a Nueva Guinea</option>
							<option value="PK">Paquist�n</option>
							<option value="PY">Paraguay</option>
							<option value="PE">Per�</option>
							<option value="PN">Pitcairn</option>
							<option value="PF">Polinesia Francesa</option>
							<option value="PL">Polonia</option>
							<option value="PT">Portugal</option>
							<option value="PR">Puerto Rico</option>
							<option value="QA">Qatar</option>
							<option value="UK">Reino Unido</option>
							<option value="CF">Rep�blica Centroafricana</option>
							<option value="CZ">Rep�blica Checa</option>
							<option value="ZA">Rep�blica de Sud�frica</option>
							<option value="DO">Rep�blica Dominicana</option>
							<option value="SK">Rep�blica Eslovaca</option>
							<option value="RE">Reuni�n</option>
							<option value="RW">Ruanda</option>
							<option value="RO">Rumania</option>
							<option value="RU">Rusia</option>
							<option value="EH">Sahara Occidental</option>
							<option value="KN">Saint Kitts y Nevis</option>
							<option value="WS">Samoa</option>
							<option value="AS">Samoa Americana</option>
							<option value="SM">San Marino</option>
							<option value="VC">San Vicente y Granadinas</option>
							<option value="SH">Santa Helena</option>
							<option value="LC">Santa Luc�a</option>
							<option value="ST">Santo Tom� y Pr�ncipe</option>
							<option value="SN">Senegal</option>
							<option value="SC">Seychelles</option>
							<option value="SL">Sierra Leona</option>
							<option value="SG">Singapur</option>
							<option value="SY">Siria</option>
							<option value="SO">Somalia</option>
							<option value="LK">Sri Lanka</option>
							<option value="PM">St Pierre y Miquelon</option>
							<option value="SZ">Suazilandia</option>
							<option value="SD">Sud�n</option>
							<option value="SE">Suecia</option>
							<option value="CH">Suiza</option>
							<option value="SR">Surinam</option>
							<option value="TH">Tailandia</option>
							<option value="TW">Taiw�n</option>
							<option value="TZ">Tanzania</option>
							<option value="TJ">Tayikist�n</option>
							<option value="TF">Territorios franceses del Sur</option>
							<option value="TP">Timor Oriental</option>
							<option value="TG">Togo</option>
							<option value="TO">Tonga</option>
							<option value="TT">Trinidad y Tobago</option>
							<option value="TN">T�nez</option>
							<option value="TM">Turkmenist�n</option>
							<option value="TR">Turqu�a</option>
							<option value="TV">Tuvalu</option>
							<option value="UA">Ucrania</option>
							<option value="UG">Uganda</option>
							<option value="UY">Uruguay</option>
							<option value="UZ">Uzbekist�n</option>
							<option value="VU">Vanuatu</option>
							<option value="VE">Venezuela</option>
							<option value="VN">Vietnam</option>
							<option value="YE">Yemen</option>
							<option value="YU">Yugoslavia</option>
							<option value="ZM">Zambia</option>
							<option value="ZW">Zimbabue</option>
						</select>
						<form:errors cssClass="error" path="pais"></form:errors>
					</div>


					<button type="submit" class="btn btn-primary">Enviar</button>

				</form:form>

			</div>
			<!--container-->
		</div>
	</div>


</body>
<%@include file="includes/footer.jsp" %>

</html>