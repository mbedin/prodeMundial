<#ftl>
<#import "/common/showMacros.ftl" as show>
<@show.page image="img/bg_como.jpg">
	<form name="frmMain" id="frmMain" method="post">
		<table height="1421" width="756" border="0" cellspacing="0" cellpadding="0" align="center" background="img/bg_como.jpg"  style="background-position: center;">
			<tr>
				<td colspan="2" height="40" valign="top">
					<table width="470" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td rowspan="2" width="80"><img src="img/punto.gif" width="80" height="1" alt="" border="0"></td>
							<td><img src="img/punto.gif" width="1" height="92" alt="" border="0"></td>
						</tr>
						<tr>
							<td class="clsTxArialNar22" colspan="2"><@show.label key="comoJugar.titulo"/></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" width="138">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="15" height="68" alt="" border="0"></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/punto.gif" width="13" height="49" alt="" border="0"></td>
						</tr>
						
						<#if cliente.aceptoBases >
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnTarjetasPorJugar"><img src="img/bo_tarjetaporjugar_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_tarjetaporjugar_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
							</tr>
							<tr>
								<td colspan="2"><img src="img/punto.gif" width="13" height="7" alt="" border="0"></td>
							</tr>
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnTarjetasJugadas"><img src="img/bo_tarjetasjugadas_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_tarjetasjugadas_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
							</tr>
							<tr>
								<td colspan="2"><img src="img/punto.gif" width="13" height="7" alt="" border="0"></td>
							</tr>
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnTarjetasExtras"><img src="img/bo_tarjetasextras_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_tarjetasextras_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
							</tr>
							<tr>
								<td colspan="2"><img src="img/punto.gif" width="15" height="7" alt="" border="0"></td>
							</tr>
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnPuntosBonus"><img src="img/bo_puntosbonus_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_puntosbonus_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
							</tr>
							<tr>
								<td colspan="2"><img src="img/punto.gif" width="15" height="7" alt="" border="0"></td>
							</tr>
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnPrincipal"><img src="img/bo_principal_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_principal_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
							</tr>						
						<#else>
							<tr>
								<td width="17" valign="top"><img src="img/punto.gif" width="17" height="1" alt="" border="0"></td>
								<td width="121" valign="top"><a href="#" id="btnPrincipal"><img src="img/bo_principal_t.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_principal_t.png',sizingMethod='scale');" width="123" height="38" alt="" border="0"></a></td>
							</tr>						
						</#if>
					</table>
				</td>
				
				<td width="614" valign="top">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="60" valign="top"><img src="img/punto.gif" width="60" height="1" alt="" border="0"></td>
							<td width="620" class="clsTxArialBlc12" valign="top">
								<br>
								Cada $2000 de compra en productos de Biog&eacute;nesis Bag&oacute;, el cliente se har&aacute; acreedor de una Tarjeta de &quot;Prode Mundial Biog&eacute;nesis Bag&oacute;&quot; (TP).  Haciendo click en Tarjetas por Jugar en la p&aacute;gina de inicio, encontrar&aacute; en su cuenta una TP obsequio para comenzar a sumar puntos para llegar a la gran final por el Premio Mayor y participar por Premios Instant&aacute;neos. Durante el transcurso de la Promo se ir&aacute;n acreditando en su cuenta tantas TP como compras efect&uacute;e.<br>
								Las TP contienen 16 partidos correspondientes a la Fase de Grupos (FG), dos partidos de cada grupo, y Campe&oacute;n, Subcampe&oacute;n, Mejor Jugador y Goleador. Ud. deber&aacute; completar la misma de acuerdo a su criterio, indicando si el resultado del partido es Local, Visitante o Empate y qui&eacute;n ser&aacute; el Campe&oacute;n, Subcampe&oacute;n, Goleador y Mejor Jugador del Mundial Sud&aacute;frica 2010. Solo participar&aacute;n las TP que hayan sido completadas hasta el 10 de junio 2010, a partir de esta fecha ya no aparecer&aacute;n m&aacute;s TP en su cuenta. Antes de esta fecha Ud. podr&aacute; realizar los cambios que crea necesarios en cualquiera de las TP de su cuenta, ingresando en Tarjetas Jugadas en la p&aacute;gina de inicio.<br>
								Terminada la FG aquellas TP que tuvieran menos de 7 puntos por aciertos en los partidos de esta fase, ser&aacute;n dadas de baja, y todos aquellos clientes que no pasaran a la 2&#0186; etapa ya no tendr&aacute;n acceso a la Promo. Entre las TP que si pasen de etapa,  se ver&aacute; cual es la mejor TP que haya confeccionado cada cliente y esas ser&aacute;n las TP que contin&uacute;en en carrera para la gran final, una TP por cliente.<br>
								Una vez finalizado el Mundial (11 de julio 2010) los 3 mejores puntajes se convierten en el Campe&oacute;n, Subcampe&oacute;n y 3&#0186; puesto de la Promo &quot;Prode Mundial Biog&eacute;nesis Bag&oacute;&quot;, haci&eacute;ndose acreedores de los siguientes premios:<br>
								<b>CAMPE&Oacute;N: .........................................................TV LCD 42&quot; + Home Theatre<br>
								SUBCAMPE&Oacute;N: ..................................................TV LCD 32&quot; + Home Theatre<br>
								3&#0186; PUESTO:..........................................................TV 29&quot; PANTALLA PLANA<br><br>
								</b>
								En caso de empate en alguno de los puestos, se proceder&aacute; al sorteo del premio que corresponda entre los clientes involucrados en dicho empate.<br><br>
								<span class="clsTxArialNar12"><strong>Puntos Bonus:</strong></span> durante toda la Promo, Ud. podr&aacute; sumar Puntos Bonus mediante la Trivia Mundial. Todos los d&iacute;as se publicar&aacute;n en la p&aacute;gina, preguntas relacionadas con Sud&aacute;frica 2010 y con mundiales pasados, con diferentes puntajes. Habr&aacute; preguntas por 3, por 5 y por 7 puntos seg&uacute;n la dificultad de la misma. Los puntos sumados mediante la Trivia Mundial s&oacute;lo sumar&aacute;n a la hora de ver qui&eacute;n es el ganador de la Promo, o sea que NO suman al terminar la FG.<br><br>
								<span class="clsTxArialNar12"><strong>TP Extras:</strong></span> durante la FG, los clientes podr&aacute;n ganar TP extras. En la p&aacute;gina de la Promo se publicar&aacute;n los productos que al comprarlos le otorgar&aacute;n estas TP extras en su cuenta, para as&iacute; tener mas chances de  estar presente en la final.<br><br>
								<span class="clsTxArialNar12"><strong>Premios Instant&aacute;neos:</strong></span> durante toda la Promo, los clientes podr&aacute;n ganar premios instant&aacute;neos de la siguiente manera: <br>
							   	<span class="clsTxArialNar12">&nbsp;-&nbsp;</span>Por indicar el resultado exacto de los partidos disputados por Argentina, Brasil, Italia y Espa&ntilde;a en la FG y en las siguientes rondas (esto a medida que estas selecciones clasifiquen a las siguientes fases: octavos, cuartos y semifinales). En el primer caso participan todos aquellos clientes que posean TP en su cuenta, para participar por los premios instant&aacute;neos en el segunda caso de este punto, solo podr&aacute; si tiene una tarjeta participando de la 2&#0186; etapa.<br> 
							   	<span class="clsTxArialNar12">&nbsp;-&nbsp;</span>Por indicar correctamente quienes ser&aacute;n las selecciones clasificadas en 1&#0186; y 2&#0186; lugar de cada grupo de la FG.<br>
							   	<span class="clsTxArialNar12">&nbsp;-&nbsp;</span>Por indicar el resultado exacto de los 2 partidos de las semifinales y del partido final. Solo podr&aacute; participar de estos premios instant&aacute;neos si tiene una tarjeta participando de la 2&#0186; etapa.<br><br>
								<span class="clsTxArialNar12"><strong>Canjes de premios:</strong></span><br> 
								<span class="clsTxArialNar12">&nbsp;-&nbsp;</span>Premios Instant&aacute;neos: Ud. recibir&aacute; un mail que le informar&aacute; que gan&oacute; un Premio Instant&aacute;neo y los mismos se les enviar&aacute;n dentro de los 5 d&iacute;as h&aacute;biles posteriores.<br>
    							<span class="clsTxArialNar12">&nbsp;-&nbsp;</span>Premios Mayores: ser&aacute;n enviados a cada ganador seg&uacute;n corresponda.<br><br>
								El 17 de junio de 2010 el escribano Ernesto C Mendizabal, matr&iacute;cula 2207, titular del Registro Notarial 234 de la CABA, constatar&aacute; en presencia de los testigos, Gabriela Quiss, DNI 27.131.639 y Paola Ferrari, DNI 18.453.389, la mejor Tarjeta de Prode que haya logrado completar cada uno de los participantes. ( Se entiende por mejor tarjeta aquella que obtenga el puntaje m&aacute;s alto por encima de los 7 puntos requeridos para continuar participando). Las mejores tarjetas de cada uno de los participantes continuar&aacute;n participando en la 2&#0186; etapa del juego ( Octavos y Cuartos de final; semifinal y final)  y hasta la finalizaci&oacute;n del Campeonato del Mundo Sud&aacute;frica 2010. El d&iacute;a 12 de julio de 2010 (d&iacute;a posterior a la finalizaci&oacute;n del Mundial), el escribano interviniente, en presencia de los testigos mencionados precedentemente, constatar&aacute; los nombres de las personas que hayan obtenido los puntajes m&aacute;s altos y se encuentran en los tres primeros puestos de la tabla de resultados. Ser&aacute;n ganadores aquellas personas que ocupen dichos puestos, y se har&aacute;n acreedores de los premios que se mencionan en las instrucciones para el Campe&oacute;n, Subcampe&oacute;n y 3&#0186; Puesto. En caso de producirse un empate en alguno de los puestos, y que deba sortearse el premio correspondiente, el escribano designado intervendr&aacute; en la determinaci&oacute;n del ganador, y el sorteo se realizar&aacute; con su presencia.<br>
							<td width="60" valign="top"><img src="img/punto.gif" width="60" height="1" alt="" border="0"></td>
						</tr>
						<#if !cliente.aceptoBases >
							<tr>
								<td colspan="2" valign="top"><img src="img/punto.gif" width="1" height="30" alt="" border="0"></td>
							</tr>
							<tr>
								<td colspan="2" class="clsTxArialBlc11" align="center" valign="middle">
									<table border="0">
										<tr>
											<td align="center" valign="middle"><@show.checkboxEspecial name="cliente.aceptoBases" id="cliente.aceptoBases" value="true" checked="false" disabled="false" /></td>
											<td class="clsTxArialBlc11" align="center" valign="middle">&nbsp;&nbsp;<@show.label key="comoJugar.aceptaBases"/></td>
											<td align="center" valign="middle"><a href="#" id="btnAceptoBases"><img src="img/bo_empezar.png" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader (src='img/bo_empezar.png',sizingMethod='scale');" alt="" width="116" height="21" hspace="25" border="0"></a></td>
										</tr>
									</table>									
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center"><@show.labelErrorField key="comoJugar.error"/></td>
							</tr>
						</#if>
					</table>
				</td>
			</tr>
		</table>
	</form>
</@show.page>