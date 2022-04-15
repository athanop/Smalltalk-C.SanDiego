!classDefinition: #DetectiveTest category: 'TPFinal-CarmenSandiego'!
TestCase subclass: #DetectiveTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!DetectiveTest methodsFor: 'creacionDePaises' stamp: 'MS 12/7/2021 16:32:36'!
argentina
 	
	| testigosDeArgentina |
	testigosDeArgentina _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoNahuel}.

	
	^ Pais conNombre: 'Argentina' conTiempoDeMigraciones: 2*hour yConValuable: 'corona de oro' conTestigos: testigosDeArgentina.! !

!DetectiveTest methodsFor: 'creacionDePaises' stamp: 'MS 12/7/2021 16:32:36'!
brasil
 
	| testigosDeBrasil |
	testigosDeBrasil _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoNahuel }.
	
	
	^ Pais conNombre: 'Brasil' conTiempoDeMigraciones: 2*hour yConValuable: 'cruz de oro' conTestigos: testigosDeBrasil.! !

!DetectiveTest methodsFor: 'creacionDePaises' stamp: 'MS 12/7/2021 16:32:36'!
italia

	| testigosDeItalia |
	testigosDeItalia _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoNahuel }.
	
	^ Pais conNombre: 'Italia' conTiempoDeMigraciones: 3*hour yConValuable: 'vasijas de Apulia' conTestigos: testigosDeItalia .! !


!DetectiveTest methodsFor: 'creacionDeDetective' stamp: 'MS 12/8/2021 00:31:01'!
unDetectiveClasicoDavid
	| unDetective unPais |
	unPais _ self argentina.
	unDetective _ DetectiveClasico ubicadoEn: unPais conCantidadDeTiempoParaEncontrarAlDelincuente: 20*hour .
	
	^ unDetective.! !

!DetectiveTest methodsFor: 'creacionDeDetective' stamp: 'j 12/8/2021 18:28:02'!
unDetectiveDeInterpolClara
	| unDetective unPais |
	
	unPais _ self argentina.
	unDetective _ DetectiveInterpol ubicadoEn: unPais conCantidadDeTiempoParaEncontrarAlDelincuente: 20*hour.
	
	^ unDetective.! !

!DetectiveTest methodsFor: 'creacionDeDetective' stamp: 'MS 12/8/2021 00:37:16'!
unDetectivePersuasivoMartin
	| unDetective unPais |
	unPais _ self argentina.
	unDetective _ DetectivePersuasivo ubicadoEn: unPais conCantidadDeTiempoParaEncontrarAlDelincuente: 20*hour .
	
	^ unDetective.! !


!DetectiveTest methodsFor: 'creacionDeTestigos' stamp: 'MS 12/8/2021 00:55:26'!
unTestigoJulian

	| unTestigo unaPista unColorDeCabello |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unColorDeCabello _ 	ColorDeCabello conDescripcion: 'marron'.
	unaPista _ 	PistaDeCaracteristica conCaracteristicaDelSospechoso: 	unColorDeCabello.
	
	
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !

!DetectiveTest methodsFor: 'creacionDeTestigos' stamp: 'MS 12/7/2021 16:32:18'!
unTestigoLautaro

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.! !

!DetectiveTest methodsFor: 'creacionDeTestigos' stamp: 'MS 12/7/2021 16:32:09'!
unTestigoMarioConPistaDeViaje

	| unTestigo unaPista |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unaPista _ 	PistaDeViaje conPais: self brasil.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !

!DetectiveTest methodsFor: 'creacionDeTestigos' stamp: 'MS 12/7/2021 16:32:36'!
unTestigoNahuel
	
 	^Testigo conGradoDeDificultadDeInterrogacion: 3.! !

!DetectiveTest methodsFor: 'creacionDeTestigos' stamp: 'MS 12/8/2021 00:55:55'!
unTestigoPabloConDosPistas

	| unTestigo unaPista unColorDeCabello unColorDeOjos unaSegundaPista |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unColorDeCabello _ 	ColorDeCabello conDescripcion: 'marron'.
	unaPista _ 	PistaDeCaracteristica conCaracteristicaDelSospechoso: 	unColorDeCabello.
	
	unColorDeOjos _ ColorDeOjos conDescripcion: 'azul'.
	unaSegundaPista _ 	PistaDeCaracteristica conCaracteristicaDelSospechoso: 	unColorDeOjos.   
	
	
   	unTestigo agregar: unaPista.
	unTestigo agregar: unaSegundaPista.
	
 	^unTestigo.! !


!DetectiveTest methodsFor: 'detectiveTest' stamp: 'MS 12/8/2021 00:29:53'!
test000_unDetectiveClasicoInterrogaYPierdeDosHorasDeTiempoFijo

	| unDetective unTestigo |
	unTestigo _ self unTestigoJulian.
	unDetective _ self unDetectiveClasicoDavid.
	
	
	unDetective interrogarA: unTestigo.
	
	Assert that: unDetective limiteDeTiempo isEqualTo: 18*hour.
	
	

	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/9/2021 06:06:01'!
test001_unDetectiveClasicoTieneAsignadaSuUbicacionConSuLimiteDeTiempoParaEncontrarAlDelincuenteYSuNivelDeHabilidadDeInterrogacion

	| argentina unDetective |
	unDetective _ self unDetectiveClasicoDavid.
	argentina _ unDetective ubicacion.
	
	
	Assert that: unDetective ubicacion isEqualTo: argentina.
	Assert that: unDetective limiteDeTiempo isEqualTo: 20*hour.
	Assert that: unDetective nivelDeHabilidad isEqualTo: 2.
	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'MS 12/8/2021 00:29:53'!
test002_unDetectiveClasicoViajaDeUnPaisAlOtroQueNoEsLimitrofe_disminuyendoSuLimiteDeTiempo

	| unDetective italia |
	italia _ self italia.
	unDetective _ self unDetectiveClasicoDavid.
	
	unDetective viajarA: italia.
	
	Assert that: unDetective ubicacion isEqualTo: italia.
	Assert that: unDetective limiteDeTiempo isEqualTo: 7*hour.
	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'MS 12/8/2021 00:29:53'!
test003_unDetectiveClasicoViajaDeUnPaisAOtroPaisLimitrofe_disminuyendoSuLimiteDeTiempo

	| argentina unDetective brasil |
	brasil _ self brasil.
	unDetective _ self unDetectiveClasicoDavid.
	argentina _ unDetective ubicacion.
	
	argentina limitrofeDe: brasil. 
	unDetective viajarA: brasil.
	
	Assert that: unDetective ubicacion isEqualTo: brasil.
	Assert that: unDetective limiteDeTiempo isEqualTo: 14*hour.
	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/8/2021 18:48:50'!
test004_unDetectiveClasicoInterrogaAUnTestigoQueTienePistas_ObteniendoPistas

	| unDetective unTestigo |
	unTestigo _ self unTestigoJulian.
	unDetective _ self unDetectiveClasicoDavid.
	unDetective interrogarA: unTestigo.
	
	
	Assert that: unDetective cantidadDePistas isEqualTo: 1.


	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/8/2021 18:48:59'!
test005_unDetectiveClasicoInterrogaAUnTestigoQueNoTienePistasYSuCantidadDePistasSeIncrementa
	
	| unDetective unTestigoSinPistas ultimaPistaDelDetective |
	unTestigoSinPistas _ self unTestigoPabloConDosPistas.
	unDetective _ self unDetectiveClasicoDavid.
	ultimaPistaDelDetective _ unDetective interrogarA: unTestigoSinPistas.

	
	Assert isTrue: (ultimaPistaDelDetective tieneInformacion).
	Assert that: unDetective cantidadDePistas isEqualTo: 1.
	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/8/2021 18:49:09'!
test006_unDetectiveClasicoInterrogaAUnTestigoQueTienePistaDeViaje
	| unDetective unTestigo ultimaPistaDelDetective |
	unTestigo _ self unTestigoMarioConPistaDeViaje.
	unDetective _ self unDetectiveClasicoDavid.

	
	ultimaPistaDelDetective _ unDetective interrogarA: unTestigo.
	
	
	Assert isTrue: (ultimaPistaDelDetective esDeViaje).


	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/8/2021 18:49:17'!
test007_unDetectiveClasicoInterrogaAUnTestigoQueNoTienePistaDeViaje
	| unDetective unTestigo ultimaPistaDelDetective |
	unTestigo _ self unTestigoJulian.
	unDetective _ self unDetectiveClasicoDavid.

	
	ultimaPistaDelDetective _ unDetective interrogarA: unTestigo.
	
	
	Assert isFalse: (ultimaPistaDelDetective esDeViaje).


	
	
	! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/8/2021 18:49:26'!
test008_unDetectiveClasicoNoTienePistasEnSuPDA
	| unDetective |
	
	unDetective _ self unDetectiveClasicoDavid.
	
	
	Assert isFalse: (unDetective tienePistasEnPDA)
! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/8/2021 18:49:36'!
test009_unDetectiveClasicoAnotaUnaPistaDeCaracteristicaEnSuPDA_TrasInterrogar
	|  unDetective unTestigo |
	unTestigo _ self unTestigoJulian.
	unDetective _ self unDetectiveClasicoDavid.
	
	
	unDetective interrogarA: unTestigo.
	
	
	
	Assert isTrue: (unDetective tienePistasEnPDA)
! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/8/2021 18:49:48'!
test010_unDetectiveClasicoInterrogaObteniendoUnaPistaQueNoEsDeCaracteristica_YNoLoAnota
	|  unDetective unTestigo |
	unTestigo _ self unTestigoMarioConPistaDeViaje.
	unDetective _ self unDetectiveClasicoDavid.
	
	
	unDetective interrogarA: unTestigo.
	
	
	
	Assert isFalse: (unDetective tienePistasEnPDA)
! !

!DetectiveTest methodsFor: 'detectiveTest' stamp: 'j 12/9/2021 06:14:21'!
test011_unDetectiveClasicoInterrogaAUnTestigoSinPistasNoObteniendoPistas
	|  unDetective unTestigo |
	unTestigo _ self unTestigoNahuel.
	unDetective _ self unDetectiveClasicoDavid.
	
	
	unDetective interrogarA: unTestigo.
	
	
	Assert that: unDetective cantidadDePistas isEqualTo: 0.
	
! !


!DetectiveTest methodsFor: 'detectivePersuasivoTest' stamp: 'j 12/9/2021 06:05:48'!
test000_cuandoCreoUnDetectivePersuasivoSuTiempoFijoAlInterrogarEsUnaHora
	| unDetective unTestigo |
	unTestigo _ self unTestigoJulian.
	unDetective _ self unDetectivePersuasivoMartin.
	
	
	
	
	Assert that: unDetective nivelDeHabilidad isEqualTo: 1.! !

!DetectiveTest methodsFor: 'detectivePersuasivoTest' stamp: 'MS 12/8/2021 00:56:16'!
test001_unDetectivePersuasivoInterrogaAUnTestigoQueTienePistas_ObteniendoDosPistas

	| unDetective unTestigo |
	unTestigo _ self unTestigoPabloConDosPistas.
	unDetective _ self unDetectivePersuasivoMartin.
	
	unDetective interrogarA: unTestigo.
	
	
	Assert that: unDetective cantidadDePistas isEqualTo: 2.! !


!DetectiveTest methodsFor: 'detectiveInterpolTest' stamp: 'j 12/8/2021 18:38:50'!
test000_unDetectiveDeInterpolViajaDeUnPaisAlOtroQueNoEsLimitrofe_disminuyendoSuLimiteDeTiempo

	| unDetective italia |
	italia _ self italia.
	unDetective _ self unDetectiveDeInterpolClara.
	
	unDetective viajarA: italia.
	
	Assert that: unDetective ubicacion isEqualTo: italia.
	Assert that: unDetective limiteDeTiempo isEqualTo: 10*hour.! !

!DetectiveTest methodsFor: 'detectiveInterpolTest' stamp: 'j 12/8/2021 19:04:14'!
test001_unDetectiveDeInterpolViajaDeUnPaisAOtroPaisLimitrofe_disminuyendoSuLimiteDeTiempo

	| unDetective brasil |
	brasil _ self brasil.
	unDetective _ self unDetectiveDeInterpolClara.
	
	unDetective ubicacion limitrofeDe: brasil. 
	unDetective viajarA: brasil.
	
	Assert that: unDetective ubicacion isEqualTo: brasil.
	Assert that: unDetective limiteDeTiempo isEqualTo: 15*hour.! !


!classDefinition: #PaisTest category: 'TPFinal-CarmenSandiego'!
TestCase subclass: #PaisTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!PaisTest methodsFor: 'creacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
argentina
	
	| testigosDeArgentina |
	testigosDeArgentina _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.

	^ Pais conNombre: 'Argentina' conTiempoDeMigraciones: 2*hour yConValuable: 'corona de oro' conTestigos: testigosDeArgentina.! !

!PaisTest methodsFor: 'creacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
brasil
 
	| testigosDeBrasil |
	testigosDeBrasil _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.
	
	
	^ Pais conNombre: 'Brasil' conTiempoDeMigraciones: 1*hour yConValuable: 'cruz de oro' conTestigos: testigosDeBrasil.! !

!PaisTest methodsFor: 'creacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
chile

	| testigosDeChile |
	testigosDeChile _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.

	^ Pais conNombre: 'Chile' conTiempoDeMigraciones: 2*hour yConValuable: 'estatua de oro' conTestigos: testigosDeChile.! !

!PaisTest methodsFor: 'creacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
italia

	| testigosDeItalia |
	testigosDeItalia _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.

	^ Pais conNombre: 'Italia' conTiempoDeMigraciones: 3*hour yConValuable: 'vasijas de Apulia' conTestigos: testigosDeItalia.! !


!PaisTest methodsFor: 'paisTest' stamp: 'MS 11/20/2021 01:15:11'!
test001_cuandoSeCreaUnPaisTieneSuNombreYValuable_ConUnTiempoDeEsperaEnMigraciones


	| unPais |
	unPais _ self argentina.
	
	
	
	Assert that: unPais nombre isEqualTo: 'Argentina'.
	Assert that: unPais objetoValioso isEqualTo: 'corona de oro'.
	Assert that: unPais tiempoDeMigraciones isEqualTo: 2*hour.! !

!PaisTest methodsFor: 'paisTest' stamp: 'MS 11/17/2021 17:15:08'!
test002_cuandoUnPaisRecienCreado_TodaviaNoFueRobado

	| argentina |
	argentina _ self argentina.
	
	
	
	Assert isFalse: (argentina fueRobado).  ! !

!PaisTest methodsFor: 'paisTest' stamp: 'MS 11/17/2021 17:15:08'!
test003_cuandoUnPaisTieneUnObjetoDeValor_QueEsRobado

	| argentina unSospechoso |
	argentina _ self argentina.
	unSospechoso _ Sospechoso new.
	
	argentina esRobadoPor: unSospechoso.
	
	
	Assert isTrue: (argentina fueRobado).  ! !

!PaisTest methodsFor: 'paisTest' stamp: 'j 11/18/2021 15:23:17'!
test004_unPaisSabeSiOtroPaisEsLimitrofe
	
	| argentina brasil |
	argentina _ self argentina. 
	brasil _ self brasil.
	
	argentina limitrofeDe: brasil.
	
	
	Assert isTrue: (argentina esLimitrofeDe: brasil).
	Assert isTrue: (brasil esLimitrofeDe: argentina).
	
	! !

!PaisTest methodsFor: 'paisTest' stamp: 'j 11/18/2021 15:14:05'!
test005_unPaisSabeQueOtroPaisNoEsLimitrofe
	
	| argentina italia |
	argentina _ self argentina. 
	italia _ self italia.
	
	
	Assert isFalse: (argentina esLimitrofeDe: italia).
	
	! !

!PaisTest methodsFor: 'paisTest' stamp: 'MS 11/19/2021 16:48:50'!
test006_unPaisConoceSusPaisesLimitrofes
	
	| argentina chile brasil |
	argentina _ self argentina. 
	chile _ self chile.
	brasil _ self brasil.
	
	argentina limitrofeDe: brasil.
	argentina limitrofeDe: chile.
	
	Assert isTrue: (argentina paisesLimitrofes includes: brasil).
	Assert isTrue: (argentina paisesLimitrofes includes: chile).
	
	! !

!PaisTest methodsFor: 'paisTest' stamp: 'j 11/25/2021 14:51:28'!
test007_unPaisTieneTresTestigos
	
	| argentina testigosDeArgentina |
	argentina _ self argentina. 
	testigosDeArgentina _ argentina testigos.
		

	Assert that: argentina cantidadDeTestigos isEqualTo: 3.
	
	
	
	! !


!PaisTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:28'!
unTestigoJulian

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.! !

!PaisTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:18'!
unTestigoLautaro

 	^Testigo conGradoDeDificultadDeInterrogacion: 2.! !

!PaisTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 11/24/2021 17:52:14'!
unTestigoPepe

 	^Testigo conGradoDeDificultadDeInterrogacion: 1.! !


!classDefinition: #PartidaTest category: 'TPFinal-CarmenSandiego'!
TestCase subclass: #PartidaTest
	instanceVariableNames: 'partida detective ladron testigoEnArgentinaConPistaColorDeOjosMarron testigoEnBrasilConPistaColorDeOjosMarron testigoEnArgentinaConPistaDeColorDeCabelloRojo brasil argentina italia archivo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'j 12/9/2021 02:38:06'!
unTestigoGastonConPistaDeCaracteristicaRojo

	| unTestigo unaPista unColorDeCabello |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unColorDeCabello _ ColorDeCabello conDescripcion: 'rojo'.
	unaPista _ 	PistaDeCaracteristica conCaracteristicaDelSospechoso: unColorDeCabello.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'j 12/8/2021 19:41:47'!
unTestigoHernanConPistaDeCaracteristicaMarron

	| unTestigo unaPista unColorDeOjos |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unColorDeOjos _ ColorDeOjos conDescripcion: 'marron'.
	unaPista _ 	PistaDeCaracteristica conCaracteristicaDelSospechoso: unColorDeOjos.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:28'!
unTestigoJulian

 	| unTestigo unaPista |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 3.
	unaPista _ 	PistaSinInformacion new.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:18'!
unTestigoLautaro

 	| unTestigo unaPista |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 3.
	unaPista _ 	PistaSinInformacion new.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.
 ! !

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:09'!
unTestigoMarioConPistaDeViaje

	| unTestigo unaPista |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unaPista _ 	PistaDeViaje conPais: self brasil.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:33:13'!
unTestigoPedroConPistaDeCaracteristicaMarron

	| unTestigo unaPista unColorDeOjos |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unColorDeOjos _ ColorDeOjos conDescripcion: 'marron'.
	unaPista _ 	PistaDeCaracteristica conCaracteristicaDelSospechoso: unColorDeOjos.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'j 12/6/2021 17:53:53'!
unTestigoPepe
 	| unTestigo unaPista |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 3.
	unaPista _ 	PistaSinInformacion new.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.
	
	
	! !

!PartidaTest methodsFor: 'fabricacionDeTestigos' stamp: 'j 12/6/2021 17:57:22'!
unTestigoTomasConPistaDeCaracteristica
	| unTestigo unaPista unColorDeCabello |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unColorDeCabello _ ColorDeCabello conDescripcion: 'verde'.
	unaPista _ 	PistaDeCaracteristica conDescripcion: unColorDeCabello.
	
   	unTestigo agregar: unaPista.

 	^unTestigo.! !


!PartidaTest methodsFor: 'fabricacionDeSospechosos' stamp: 'j 12/6/2021 18:03:31'!
unSospechosoCarlos
	^ Sospechoso conNombre: 'Carlos' colorDeOjos: 'verde' formaDeCabello: 'corto' colorDeCabello: 'blanco'.! !

!PartidaTest methodsFor: 'fabricacionDeSospechosos' stamp: 'MS 12/8/2021 17:32:21'!
unSospechosoClaudia
	^ Sospechoso conNombre: 'Claudia' colorDeOjos: 'marron' formaDeCabello: 'enrulado' colorDeCabello: 'negro'.! !

!PartidaTest methodsFor: 'fabricacionDeSospechosos' stamp: 'MS 12/8/2021 17:34:28'!
unSospechosoMiguel
	^ Sospechoso conNombre: 'Miguel' colorDeOjos: 'marron' formaDeCabello: 'largo' colorDeCabello: 'rojo'.! !

!PartidaTest methodsFor: 'fabricacionDeSospechosos' stamp: 'j 12/6/2021 17:50:45'!
unSospechosoPepe
	^ Sospechoso conNombre: 'Pepe' colorDeOjos: 'marron' formaDeCabello: 'corto' colorDeCabello: 'negro'.! !


!PartidaTest methodsFor: 'fabricacionDePaises' stamp: 'j 12/9/2021 03:10:21'!
argentina
	
	| testigosDeArgentina |
	
	testigoEnArgentinaConPistaColorDeOjosMarron _ self unTestigoPedroConPistaDeCaracteristicaMarron.
	testigoEnArgentinaConPistaDeColorDeCabelloRojo _ self unTestigoGastonConPistaDeCaracteristicaRojo.
	
	testigosDeArgentina _ {testigoEnArgentinaConPistaColorDeOjosMarron. testigoEnArgentinaConPistaDeColorDeCabelloRojo. self unTestigoPepe}.

	^ Pais conNombre: 'Argentina' conTiempoDeMigraciones: 2*hour yConValuable: 'corona de oro' conTestigos: testigosDeArgentina.! !

!PartidaTest methodsFor: 'fabricacionDePaises' stamp: 'j 12/8/2021 19:41:47'!
brasil
 
	| testigosDeBrasil |
	
	testigoEnBrasilConPistaColorDeOjosMarron _ self unTestigoHernanConPistaDeCaracteristicaMarron.
	
	testigosDeBrasil _ {testigoEnBrasilConPistaColorDeOjosMarron . self unTestigoLautaro. self unTestigoPepe}.
	
	
	^ Pais conNombre: 'Brasil' conTiempoDeMigraciones: 1*hour yConValuable: 'cruz de oro' conTestigos: testigosDeBrasil.! !

!PartidaTest methodsFor: 'fabricacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
chile

	| testigosDeChile |
	testigosDeChile _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.

	^ Pais conNombre: 'Chile' conTiempoDeMigraciones: 2*hour yConValuable: 'estatua de oro' conTestigos: testigosDeChile.! !

!PartidaTest methodsFor: 'fabricacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
italia

	| testigosDeItalia |
	testigosDeItalia _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.

	^ Pais conNombre: 'Italia' conTiempoDeMigraciones: 3*hour yConValuable: 'vasijas de Apulia' conTestigos: testigosDeItalia.! !


!PartidaTest methodsFor: 'fabricacionDeDetective' stamp: 'MS 12/8/2021 00:31:01'!
unDetectiveClasicoDavid
	| unDetective unPais |
	unPais _ self argentina.
	unDetective _ DetectiveClasico ubicadoEn: unPais conCantidadDeTiempoParaEncontrarAlDelincuente: 20*hour .
	
	^ unDetective.! !


!PartidaTest methodsFor: 'setUp/tearDown' stamp: 'j 12/9/2021 19:11:19'!
setUp
	| sospechosos paises |
	
	sospechosos _ self listadoConSospechosos.
	paises _ self listadoConPaises.
	detective _ self unDetectiveClasicoDavid.
	
	archivo _ ArchivoDeMentira new.
	partida _ Partida conUnListadoDeSospechosos: sospechosos conLosPaisesAViajar: paises conDetective: detective conLadron: ladron conArchivo: archivo.
	! !


!PartidaTest methodsFor: 'factory' stamp: 'j 12/9/2021 04:37:19'!
listadoConPaises
	brasil _ self brasil.
	argentina _ self argentina.
	italia _ self italia.
	^  {argentina . italia . brasil}.
	
	! !

!PartidaTest methodsFor: 'factory' stamp: 'j 12/7/2021 00:54:22'!
listadoConSospechosos
	
	ladron _ self unSospechosoMiguel.
	
	^  {self unSospechosoCarlos . self unSospechosoClaudia . ladron . self unSospechosoPepe}.
	
	! !


!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:04:42'!
test001_seIniciaUnaPartidaConSuListadoDeSospechosos_suListaDePaisesYUbicacionDondeSeEfectuoElRoboTeniendoSulimiteDeTiempo
	
	
	Assert isTrue: (partida tieneSospechosos).
	Assert isTrue: (partida tienePaises).
	Assert that: partida ubicacion isEqualTo: detective ubicacion.
	Assert that: partida tiempoRestante isEqualTo: 20 * hour.
	Assert that: partida ladron isEqualTo: ladron.! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 01:53:36'!
test002_elDetectiveDeLaPartidaInterrogaAUnTestigoObteniendoUnaPistaDeCaracteristicaConLaCualFiltraElListadoDeSospechosos
	| listaDeSospechosos unaPistaDeCaracteristica |
	
	unaPistaDeCaracteristica _ partida realizarInterrogatorioA: testigoEnArgentinaConPistaColorDeOjosMarron.
	
	listaDeSospechosos _ partida filtrarSospechososConPistasObtenidas.
	
	
	self assert: listaDeSospechosos includes:  ladron.
	self assert:  listaDeSospechosos size equals: 3.
	self assert: (listaDeSospechosos allSatisfy: [:unSospechoso | unSospechoso coincideCon: unaPistaDeCaracteristica])! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:20:58'!
test003_elDetectiveDeLaPartidaIntentaInterrogaAUnTestigoQueEstaEnOtroPaisYNoPuede
	
	
	Assert
        should: [ partida realizarInterrogatorioA: testigoEnBrasilConPistaColorDeOjosMarron ]
        signal: Error
        withDescription: Partida mensajeDeErrorElTestigoNoSeEncuentraEnElPais.
! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 02:50:56'!
test004_seEmiteLaOrdenDeArrestoAtrapandoAlCulpableSinObtenerTodasLasPistasGanandoLaPartida
	
	partida realizarInterrogatorioA: testigoEnArgentinaConPistaDeColorDeCabelloRojo.
	
	partida emitirOrdenDeArrestoConLasPistasObtenidas.
	
	
	Assert isTrue: partida ganada.! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 03:35:39'!
test005_seEmiteLaOrdenDeArrestoAUnSospechosoNoCulpableNoGanandoLaPartida
	
	partida emitirOrdenDeArrestoPara: self unSospechosoPepe.
	
	
	Assert isFalse: partida ganada.! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:23:36'!
test006_seDescuentaTiempoDeLaPartidaAlViajarAOtroPais
	| tiempoRestanteAlViajar |
	
	tiempoRestanteAlViajar _ partida tiempoRestante - (partida costoDeTiempoDelDetectiveParaViajarA: self brasil).
	partida realizarViajeA: brasil.
	
	
	Assert that: partida tiempoRestante isEqualTo: tiempoRestanteAlViajar.! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:27:32'!
test007_seDescuentaTiempoDeLaPartidaAlInterrogarAUnTestigo
	| tiempoRestanteAlInterrogar |
	
	tiempoRestanteAlInterrogar _ partida tiempoRestante - (partida costoDeTiempoDelDetectiveAlInterrogarA: testigoEnArgentinaConPistaColorDeOjosMarron).
	partida realizarInterrogatorioA: testigoEnArgentinaConPistaColorDeOjosMarron.
	
	
	Assert that: partida tiempoRestante isEqualTo: tiempoRestanteAlInterrogar.! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:25:29'!
test008_noSePuedeViajarAUnPaisQueNoExisteEnLaPartida
	
	
	Assert
	should:  [partida realizarViajeA: self chile]
	signal:  Error
	withDescription: Partida mensajeDeErrorAlViajarAUnPaisQueNoExiste.
	! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:47:57'!
test009_sePierdeLaPartidaAlQuedarseSinTiempoElDetective
	
	partida realizarViajeA: italia.
	partida realizarViajeA: argentina.
	
	
	Assert that: partida tiempoRestante isEqualTo: 0*	hour.
	Assert isTrue: partida estaPerdida.
	
	! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:52:14'!
test010_alIniciarLaPartidaNoSeEncuentraPerdida
	
	
	Assert that: partida tiempoRestante isEqualTo: 20*	hour.
	Assert isFalse: partida estaPerdida.
	
	! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 04:58:06'!
test011_seEmiteLaOrdenDeArrestoAUnSospechosoNoCulpablePerdiendoLaPartida
	
	partida emitirOrdenDeArrestoPara: self unSospechosoPepe.
	
	
	Assert isTrue: partida estaPerdida.! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 05:14:52'!
test012_siLaPartidaEstaPerdidaNoSePuedeViajar
	
	partida emitirOrdenDeArrestoPara: self unSospechosoPepe.
	
	
	Assert 
	should: [partida realizarViajeA: brasil]
	signal:  Error
	withDescription: Partida mensajeDeErrorCuandoUnaPartidaEstaFinalizada
	
	! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 05:20:53'!
test013_siLaPartidaEstaPerdidaNoSePuedeInterrogar
	
	partida emitirOrdenDeArrestoPara: self unSospechosoPepe.
	
	
	Assert 
	should: [partida realizarInterrogatorioA: testigoEnArgentinaConPistaColorDeOjosMarron]
	signal:  Error
	withDescription: Partida mensajeDeErrorCuandoUnaPartidaEstaFinalizada
	
	! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 05:25:02'!
test014_siLaPartidaEstaGanadaNoSePuedeInterrogar
	
	partida emitirOrdenDeArrestoPara: ladron.
	
	
	Assert 
	should: [partida realizarInterrogatorioA: testigoEnArgentinaConPistaColorDeOjosMarron]
	signal:  Error
	withDescription: Partida mensajeDeErrorCuandoUnaPartidaEstaFinalizada
	
	! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 05:31:02'!
test015_siLaPartidaEstaGanadaNoSePuedeOmitirUnaOrdenDeArresto
	
	partida emitirOrdenDeArrestoPara: ladron.
	
	
	Assert 
	should: [partida emitirOrdenDeArrestoPara: self unSospechosoClaudia]
	signal:  Error
	withDescription: Partida mensajeDeErrorCuandoUnaPartidaEstaFinalizada
	
	! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 19:34:17'!
test016_seImprimeElEstadoFinalDeLaPartidaTrasEmitirLaOrdenDeArrestoEnUnArchivoEnUnaPartidaGanada
	    
	partida emitirOrdenDeArrestoPara: partida ladron.
	

	Assert that: partida textoEscritoHastaElMomento isEqualTo: archivo fileContents. 
	Assert isTrue: (archivo fileContents includesSubString: 'ganada').! !

!PartidaTest methodsFor: 'partidaTest' stamp: 'j 12/9/2021 19:35:19'!
test017_seImprimeElEstadoFinalDeLaPartidaTrasEmitirLaOrdenDeArrestoEnUnArchivoEnUnaPartidaPerdida
	    
	partida emitirOrdenDeArrestoPara: self unSospechosoPepe.
	

	Assert that: partida textoEscritoHastaElMomento isEqualTo: archivo fileContents. 
	Assert isTrue: (archivo fileContents includesSubString: 'perdida').! !


!classDefinition: #SospechosoTest category: 'TPFinal-CarmenSandiego'!
TestCase subclass: #SospechosoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!SospechosoTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:28'!
unTestigoJulian

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.
	
	"este factory solo se utiliza en paisArgentina y dicho mensaje no se utiliza"! !

!SospechosoTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:18'!
unTestigoLautaro

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.
	
	"este factory solo se utiliza en paisArgentina y dicho mensaje no se utiliza"! !

!SospechosoTest methodsFor: 'fabricacionDeTestigos' stamp: 'SJ 11/28/2021 16:04:50'!
unTestigoPepe

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.
	
	"este factory solo se utiliza en paisArgentina y dicho mensaje no se utiliza"! !


!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'MS 11/17/2021 15:58:30'!
test001_unSospechosoTieneSuNombreYLasCaracteristicasColorDeOjosFormaDeCabelloColorDeCabello
	| unSospechosoPepe |
	unSospechosoPepe _ self unSospechosoPepe.
	
	
	Assert that: unSospechosoPepe nombre isEqualTo: 'Pepe'.
	Assert that: unSospechosoPepe colorDeOjos isEqualTo: 'marron'.
	Assert that: unSospechosoPepe formaDeCabello isEqualTo: 'corto'.
	Assert that: unSospechosoPepe colorDeCabello isEqualTo: 'negro'.
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'MS 11/17/2021 15:58:21'!
test002_unSospechosoTieneUnaCaracteristicaDeColorDeOjos
	| unSospechosoPepe unColorDeOjos|
	unSospechosoPepe _ self unSospechosoPepe.
	unColorDeOjos _ ColorDeOjos conDescripcion: 'marron'.
	
	Assert isTrue: (unSospechosoPepe tieneLaCaracteristica: unColorDeOjos).
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'j 11/25/2021 17:54:20'!
test003_unSospechosoCoincideConUnaPista
	| unSospechosoPepe unaPista unColorDeOjos |
	unSospechosoPepe _ self unSospechosoPepe.
	unColorDeOjos _ ColorDeOjos conDescripcion: 'marron'.
	
	unaPista _ PistaDeCaracteristica conCaracteristicaDelSospechoso: unColorDeOjos.
	
	
	Assert isTrue: (unSospechosoPepe coincideCon: unaPista).
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'j 11/25/2021 17:54:20'!
test004_unSospechosoNoCoincideConUnaPista


	| unSospechosoPepe unaPista unColor |
	unSospechosoPepe _ self unSospechosoPepe.
	unColor _ ColorDeOjos conDescripcion: 'verde'.
	
	unaPista _ PistaDeCaracteristica conCaracteristicaDelSospechoso: unColor.
	
	
	
	Assert isFalse: (unSospechosoPepe coincideCon: unaPista).
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'MS 11/17/2021 15:53:39'!
test005_unSospechosoTieneUnaCaracteristicaEspecificaDeColorDeCabello
	| unSospechosoPepe unColorDeCabello |
	unSospechosoPepe _ self unSospechosoPepe.
	unColorDeCabello _ ColorDeCabello conDescripcion: 'negro'.
	
	Assert isTrue: (unSospechosoPepe tieneLaCaracteristica: unColorDeCabello).
	
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'MS 11/17/2021 15:53:42'!
test006_unSospechosoTieneUnaCaracteristicaEspecificaDeFormaDeCabello
	| unSospechosoPepe unaFormaDeCabello |
	unSospechosoPepe _ self unSospechosoPepe.
	unaFormaDeCabello _ FormaDeCabello conDescripcion: 'corto'.
	
	
	Assert isTrue: (unSospechosoPepe tieneLaCaracteristica: unaFormaDeCabello).
	
	
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'MS 11/17/2021 15:53:46'!
test007_unSospechosoNoTieneUnaCaracteristicaDeColorDeOjo
	| unSospechoso unColorDeOjos |
	unSospechoso _ self unSospechosoPepe.
	
	unColorDeOjos _ ColorDeOjos conDescripcion: 'Verde'.
	
	Assert isFalse: (unSospechoso tieneLaCaracteristica: unColorDeOjos).
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'MS 11/17/2021 15:59:32'!
test008_unSospechosoNoTieneUnaCaracteristicaEspecificaDeColorDeCabello
	| unSospechosoPepe unColorDeCabello |
	unSospechosoPepe _ self unSospechosoPepe.
	
	unColorDeCabello _ ColorDeCabello conDescripcion: 'azul'.
	
	Assert isFalse: (unSospechosoPepe tieneLaCaracteristica: unColorDeCabello).
	
	
	
	
	! !

!SospechosoTest methodsFor: 'sospechosoTest' stamp: 'j 12/2/2021 14:40:34'!
test009_unSospechosoNoTieneUnaCaracteristicaEspecificaDeFormaDeCabello
	| unSospechosoPepe unaFormaDeCabello |
	unSospechosoPepe _ self unSospechosoPepe.
	
	unaFormaDeCabello _ FormaDeCabello conDescripcion: 'largo'.
	
	
	Assert isFalse: (unSospechosoPepe tieneLaCaracteristica: unaFormaDeCabello).
	
	
	
	
	
	! !


!SospechosoTest methodsFor: 'fabricacionDeSospechosos' stamp: 'MS 11/17/2021 15:33:02'!
unSospechosoPepe
	^ Sospechoso conNombre: 'Pepe' colorDeOjos: 'marron' formaDeCabello: 'corto' colorDeCabello: 'negro'.
	
 
	
	
	! !


!SospechosoTest methodsFor: 'fabricacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
unPaisArgentina

	| testigosDeArgentina |
	testigosDeArgentina _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.
	
	^ Pais conNombre: 'argentina' conTiempoDeMigraciones: 2*hour  yConValuable: 'corona de oro' conTestigos: testigosDeArgentina.
	
	"este factory no se está utilizando"! !


!classDefinition: #TestigoTest category: 'TPFinal-CarmenSandiego'!
TestCase subclass: #TestigoTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!TestigoTest methodsFor: 'frabricacionDePaises' stamp: 'MS 12/7/2021 16:32:28'!
brasil
 
	| testigosDeBrasil |
	testigosDeBrasil _ {self unTestigoJulian. self unTestigoLautaro. self unTestigoPepe}.
	
	
	^ Pais conNombre: 'Brasil' conTiempoDeMigraciones: 1*hour yConValuable: 'cruz de oro' conTestigos: testigosDeBrasil.! !


!TestigoTest methodsFor: 'testigoTest' stamp: 'j 12/2/2021 14:30:50'!
test001_unTestigoConoceSuGradoDeDificultadDeInterrogacion
	| unTestigo |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	
	
	Assert that: unTestigo gradoDeDificultadDeInterrogacion isEqualTo: 1.
. ! !

!TestigoTest methodsFor: 'testigoTest' stamp: 'j 12/2/2021 14:56:27'!
test002_unTestigo_tienePistas
	| unTestigo unaPista unColorDeCabello |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	unColorDeCabello _ ColorDeCabello conDescripcion: 'azul'.
	unaPista _ 	PistaDeCaracteristica conCaracteristicaDelSospechoso: 	unColorDeCabello.
	
   	unTestigo agregar: unaPista.
	
	
	Assert isTrue: (unTestigo tienePistas). 
		! !

!TestigoTest methodsFor: 'testigoTest' stamp: 'MS 11/24/2021 17:52:14'!
test003_unTestigo_noTieneNingunaPista
	| unTestigo |
	unTestigo _ Testigo conGradoDeDificultadDeInterrogacion: 1.
	
	
	Assert isFalse: unTestigo tienePistas 
. ! !

!TestigoTest methodsFor: 'testigoTest' stamp: 'j 12/8/2021 20:14:09'!
test004_unTestigoNoTienePistaDeViaje
	| unTestigo |
	unTestigo _ self unTestigoJulian.
	
	
	Assert isFalse: (unTestigo tienePistaDeViaje).! !

!TestigoTest methodsFor: 'testigoTest' stamp: 'j 12/8/2021 20:14:18'!
test005_unTestigoTienePistaDeViaje
	| unTestigo unaPista unPais |
	unTestigo _ self unTestigoJulian.
	unPais _ self brasil.
	
	unaPista _ 	PistaDeViaje conPais: unPais.   
	unTestigo agregar: unaPista.
	
	
	Assert isTrue: (unTestigo tienePistaDeViaje: unPais).! !

!TestigoTest methodsFor: 'testigoTest' stamp: 'MS 12/7/2021 16:32:28'!
test006_cuandoUnTestigoNoTienePistas_entregaUnaPistaSinInformacion
	|  unTestigo pistaEntregada |
	unTestigo _ self unTestigoJulian.
	
	Assert isFalse: (unTestigo tienePistas).
	pistaEntregada _ unTestigo darPista.
	
	Assert isFalse: (pistaEntregada tieneInformacion)
	! !

!TestigoTest methodsFor: 'testigoTest' stamp: 'j 12/8/2021 20:14:31'!
test007_unTestigoTieneUnaPistaNulaSinInformacion
	| unTestigo unaPista |
	unTestigo _ self unTestigoJulian.
	
	unaPista _ 	PistaSinInformacion new.
	
	Assert isFalse: (unaPista tieneInformacion).! !


!TestigoTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:28'!
unTestigoJulian

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.
 ! !

!TestigoTest methodsFor: 'fabricacionDeTestigos' stamp: 'MS 12/7/2021 16:32:18'!
unTestigoLautaro

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.
 ! !

!TestigoTest methodsFor: 'fabricacionDeTestigos' stamp: 'j 11/25/2021 15:49:24'!
unTestigoPepe

 	^Testigo conGradoDeDificultadDeInterrogacion: 3.
	
 ! !


!classDefinition: #ArchivoDeMentira category: 'TPFinal-CarmenSandiego'!
Object subclass: #ArchivoDeMentira
	instanceVariableNames: 'contenido'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!ArchivoDeMentira methodsFor: 'actions' stamp: 'j 12/9/2021 16:42:07'!
forceWriteStreamDo: aBlockClosure 

    aBlockClosure value: contenido.! !


!ArchivoDeMentira methodsFor: 'accessing' stamp: 'j 12/9/2021 16:41:53'!
fileContents
    ^ contenido contents.! !


!ArchivoDeMentira methodsFor: 'initialization' stamp: 'j 12/9/2021 16:42:21'!
initialize

    contenido _ ReadWriteStream on: ''.! !


!classDefinition: #Caracteristica category: 'TPFinal-CarmenSandiego'!
Object subclass: #Caracteristica
	instanceVariableNames: 'descripcion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!Caracteristica methodsFor: 'testing' stamp: 'MS 12/6/2021 00:16:11'!
coincideCon: unSospechoso
	
	self subclassResponsibility.! !


!Caracteristica methodsFor: 'initialization' stamp: 'j 11/17/2021 03:37:30'!
conDescripcion: unaDescripcion 
	descripcion _ unaDescripcion.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Caracteristica class' category: 'TPFinal-CarmenSandiego'!
Caracteristica class
	instanceVariableNames: ''!

!Caracteristica class methodsFor: 'as yet unclassified' stamp: 'j 11/17/2021 03:38:19'!
conDescripcion: unaDescripcion
	^ self new conDescripcion: unaDescripcion.! !


!classDefinition: #ColorDeCabello category: 'TPFinal-CarmenSandiego'!
Caracteristica subclass: #ColorDeCabello
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!ColorDeCabello methodsFor: 'testing' stamp: 'MS 12/6/2021 00:16:01'!
coincideCon: unSospechoso
	^ unSospechoso colorDeCabello = descripcion.! !


!classDefinition: #ColorDeOjos category: 'TPFinal-CarmenSandiego'!
Caracteristica subclass: #ColorDeOjos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!ColorDeOjos methodsFor: 'testing' stamp: 'j 11/17/2021 03:30:19'!
coincideCon: unSospechoso
	^ unSospechoso colorDeOjos = descripcion.! !


!classDefinition: #FormaDeCabello category: 'TPFinal-CarmenSandiego'!
Caracteristica subclass: #FormaDeCabello
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!FormaDeCabello methodsFor: 'testing' stamp: 'j 11/17/2021 03:29:15'!
coincideCon: unSospechoso 
	^ unSospechoso formaDeCabello = descripcion.! !


!classDefinition: #Detective category: 'TPFinal-CarmenSandiego'!
Object subclass: #Detective
	instanceVariableNames: 'ubicacion limiteDeTiempo pda pistasDeViaje'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!Detective methodsFor: 'initialization' stamp: 'j 12/9/2021 06:22:30'!
initialize

	pda _ PersonalDigitalAssistant new.
	pistasDeViaje _ Set new.
	! !

!Detective methodsFor: 'initialization' stamp: 'MS 12/8/2021 00:31:40'!
initializeUbicadoEn: unPais conCantidadDeTiempoParaEncontrarAlDelincuente: unaCantidadDeTiempo  
	
	ubicacion _ unPais.
	limiteDeTiempo _ unaCantidadDeTiempo.
! !


!Detective methodsFor: 'actions' stamp: 'j 12/9/2021 06:19:34'!
anotarPistaEnPDA: unaPista 
	pda anotar: unaPista.
	
! !

!Detective methodsFor: 'actions' stamp: 'j 12/9/2021 05:51:28'!
guardarPista: unaPista 
	pistasDeViaje add: unaPista.
	^unaPista.! !

!Detective methodsFor: 'actions' stamp: 'j 12/9/2021 06:15:41'!
noAnotarPista
	! !

!Detective methodsFor: 'actions' stamp: 'j 12/9/2021 20:01:56'!
viajarA: unPais 
	
	(self estadosDeViajeParaIrHacia: unPais) realizarViajePara: self hacia: unPais.! !

!Detective methodsFor: 'actions' stamp: 'j 12/9/2021 20:02:10'!
viajeLimitrofeHacia: unPais 

	ubicacion _ unPais.
	limiteDeTiempo _ limiteDeTiempo - (self tiempoDeViajeHaciaUnPaisLimitrofe: unPais).
	! !

!Detective methodsFor: 'actions' stamp: 'j 12/9/2021 04:51:15'!
viajeNoLimitrofeHacia: unPais 
	ubicacion _ unPais.
	limiteDeTiempo _ (limiteDeTiempo - (self tiempoDeViajeHacia: unPais)) max: 0*hour.! !


!Detective methodsFor: 'accessing' stamp: 'j 12/9/2021 05:52:23'!
cantidadDePistas
	^pistasDeViaje size + (self pistasDeCaracteristicas size).! !

!Detective methodsFor: 'accessing' stamp: 'j 12/9/2021 06:02:52'!
costoDeTiempoAlInterrogarA: unTestigo

	^ (self nivelDeHabilidad * unTestigo gradoDeDificultadDeInterrogacion)*hour! !

!Detective methodsFor: 'accessing' stamp: 'j 12/9/2021 05:58:00'!
costoFijoDeViaje

	^ 10 * hour.! !

!Detective methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:50:13'!
estadosDeViajeParaIrHacia: unPais

	^EstadoDeViaje realizarViajePara: self hacia: unPais
	! !

!Detective methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:53:47'!
interrogarA: unTestigo 

	self tiempoPerdidoAlInterrogarA: unTestigo.
 	^ self obtenerPistaDe: unTestigo.	! !

!Detective methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:51:45'!
limiteDeTiempo
	
	^limiteDeTiempo! !

!Detective methodsFor: 'accessing' stamp: 'j 12/9/2021 06:04:12'!
nivelDeHabilidad
	^ 2.! !

!Detective methodsFor: 'accessing' stamp: 'j 12/9/2021 05:50:06'!
obtenerPistaDe: unTestigo
	
	|pistaObtenida|
	pistaObtenida _ unTestigo darPista indicarDondeAnotarA: self.
	"self anotarPistaEnPDA: pistaObtenida.
	self guardarPista: pistaObtenida."
	
	^ pistaObtenida.! !

!Detective methodsFor: 'accessing' stamp: 'j 12/9/2021 05:53:50'!
pistasDeCaracteristicas
	
	 ^ pda pistasAnotadas.! !

!Detective methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:53:31'!
tiempoDeViajeHacia: unPais

	^ (unPais tiempoDeMigraciones + (self costoFijoDeViaje))! !

!Detective methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:52:08'!
tiempoDeViajeHaciaUnPaisLimitrofe: unPais

	^ (self tiempoDeViajeHacia: unPais) / 2! !

!Detective methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:46:57'!
tiempoPerdidoAlInterrogarA: unTestigo

	^ limiteDeTiempo _ limiteDeTiempo - (self costoDeTiempoAlInterrogarA: unTestigo)! !

!Detective methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:51:49'!
ubicacion
	
	^ubicacion! !


!Detective methodsFor: 'testing' stamp: 'j 12/9/2021 06:01:54'!
limiteDeTiempoAgotado
	^ limiteDeTiempo = (0 *	hour) .! !

!Detective methodsFor: 'testing' stamp: 'j 12/9/2021 05:58:43'!
puedeInterrogarA: unTestigo 
	^ unTestigo estaUbicadoEn: ubicacion.! !

!Detective methodsFor: 'testing' stamp: 'MS 12/8/2021 00:51:55'!
tienePistasEnPDA
	
	^(pda tienePistas) not.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Detective class' category: 'TPFinal-CarmenSandiego'!
Detective class
	instanceVariableNames: ''!

!Detective class methodsFor: 'instance creation' stamp: 'MS 12/8/2021 00:31:22'!
ubicadoEn: unPais conCantidadDeTiempoParaEncontrarAlDelincuente: unaCantidadDeTiempo  
	
	^self new initializeUbicadoEn: unPais conCantidadDeTiempoParaEncontrarAlDelincuente: unaCantidadDeTiempo .! !


!classDefinition: #DetectiveClasico category: 'TPFinal-CarmenSandiego'!
Detective subclass: #DetectiveClasico
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!


!classDefinition: #DetectiveInterpol category: 'TPFinal-CarmenSandiego'!
Detective subclass: #DetectiveInterpol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!DetectiveInterpol methodsFor: 'accessing' stamp: 'MS 12/8/2021 00:21:29'!
tiempoDeViajeHacia: unPais

	^ (self costoFijoDeViaje)! !


!classDefinition: #DetectivePersuasivo category: 'TPFinal-CarmenSandiego'!
Detective subclass: #DetectivePersuasivo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!DetectivePersuasivo methodsFor: 'actions' stamp: 'j 12/8/2021 18:14:41'!
interrogarA: unTestigo 

	self tiempoPerdidoAlInterrogarA: unTestigo.
 	self obtenerPistaDe: unTestigo.
 	self obtenerPistaDe: unTestigo.	! !


!DetectivePersuasivo methodsFor: 'accessing' stamp: 'j 12/9/2021 06:03:33'!
nivelDeHabilidad
	^ 1.! !


!classDefinition: #EstadoDeViaje category: 'TPFinal-CarmenSandiego'!
Object subclass: #EstadoDeViaje
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!EstadoDeViaje methodsFor: 'actions' stamp: 'MS 11/20/2021 00:44:54'!
realizarViajePara: unDetective hacia: unPais

	self subclassResponsibility.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoDeViaje class' category: 'TPFinal-CarmenSandiego'!
EstadoDeViaje class
	instanceVariableNames: ''!

!EstadoDeViaje class methodsFor: 'as yet unclassified' stamp: 'MS 11/20/2021 00:52:22'!
puedeHacerseCargoDe: unDetective hacia: unPais

	self subclassResponsibility.! !

!EstadoDeViaje class methodsFor: 'as yet unclassified' stamp: 'MS 11/20/2021 00:51:39'!
realizarViajePara: unDetective hacia: unPais
	
	
	^(self allSubclasses detect: [:estado | estado puedeHacerseCargoDe: unDetective hacia: unPais ] ) new.
	
	! !


!classDefinition: #EstadoViajeAPaisLimitrofe category: 'TPFinal-CarmenSandiego'!
EstadoDeViaje subclass: #EstadoViajeAPaisLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!EstadoViajeAPaisLimitrofe methodsFor: 'actions' stamp: 'SJ 11/28/2021 00:54:27'!
realizarViajePara: unDetective hacia: unPais

	unDetective viajeLimitrofeHacia: unPais
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoViajeAPaisLimitrofe class' category: 'TPFinal-CarmenSandiego'!
EstadoViajeAPaisLimitrofe class
	instanceVariableNames: ''!

!EstadoViajeAPaisLimitrofe class methodsFor: 'instance creation' stamp: 'MS 11/20/2021 01:27:03'!
puedeHacerseCargoDe: unDetective hacia: unPais 
	
	^unPais esLimitrofeDe: unDetective ubicacion! !


!classDefinition: #EstadoViajeAPaisNoLimitrofe category: 'TPFinal-CarmenSandiego'!
EstadoDeViaje subclass: #EstadoViajeAPaisNoLimitrofe
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!EstadoViajeAPaisNoLimitrofe methodsFor: 'actions' stamp: 'MS 11/20/2021 00:14:48'!
realizarViajePara: unDetective hacia: unPais 

	unDetective viajeNoLimitrofeHacia: unPais! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EstadoViajeAPaisNoLimitrofe class' category: 'TPFinal-CarmenSandiego'!
EstadoViajeAPaisNoLimitrofe class
	instanceVariableNames: ''!

!EstadoViajeAPaisNoLimitrofe class methodsFor: 'as yet unclassified' stamp: 'MS 11/20/2021 01:26:55'!
puedeHacerseCargoDe: unDetective hacia: unPais 
	
	^(unPais esLimitrofeDe: unDetective ubicacion) not.! !


!classDefinition: #Pais category: 'TPFinal-CarmenSandiego'!
Object subclass: #Pais
	instanceVariableNames: 'horasDeMigraciones objetoValioso nombre paisesLimitrofes testigos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!Pais methodsFor: 'initialization' stamp: 'MS 11/20/2021 01:12:20'!
initialize
	paisesLimitrofes _ Set new.
	testigos _ Array new.! !

!Pais methodsFor: 'initialization' stamp: 'MS 11/20/2021 01:19:08'!
initializeConNombre: unNombreDePais conTiempoDeMigraciones: unaCantidadDeTiempoDeMigraciones yConValuable: unValuable conTestigos: conTestigos  
	
	nombre _ unNombreDePais.
	horasDeMigraciones _ unaCantidadDeTiempoDeMigraciones.
	objetoValioso _ unValuable.
	testigos _ conTestigos.! !


!Pais methodsFor: 'accesing' stamp: 'j 11/25/2021 14:52:14'!
cantidadDeTestigos
	^ testigos size.! !

!Pais methodsFor: 'accesing' stamp: 'j 11/17/2021 03:56:02'!
nombre
	^nombre! !

!Pais methodsFor: 'accesing' stamp: 'MS 11/11/2021 23:16:59'!
objetoValioso
	
	^objetoValioso.! !

!Pais methodsFor: 'accesing' stamp: 'MS 11/19/2021 16:48:59'!
paisesLimitrofes
	
	^paisesLimitrofes! !

!Pais methodsFor: 'accesing' stamp: 'MS 11/20/2021 01:18:15'!
testigos

	^testigos! !

!Pais methodsFor: 'accesing' stamp: 'MS 11/11/2021 22:55:45'!
tiempoDeMigraciones
	
	^horasDeMigraciones.! !


!Pais methodsFor: 'testing' stamp: 'j 11/18/2021 15:39:24'!
esLimitrofeDe: unPais 
	^ paisesLimitrofes includes: unPais.! !

!Pais methodsFor: 'testing' stamp: 'j 12/9/2021 03:22:09'!
esRobadoPor: unSospechoso 
	unSospechoso robarObjeto: objetoValioso.
	objetoValioso _ ''.! !

!Pais methodsFor: 'testing' stamp: 'MS 11/11/2021 23:17:19'!
fueRobado
	
	
	^objetoValioso = ''.! !

!Pais methodsFor: 'testing' stamp: 'j 11/18/2021 15:34:06'!
limitrofeCon: unPais 
	paisesLimitrofes add: unPais.! !

!Pais methodsFor: 'testing' stamp: 'j 11/18/2021 15:27:08'!
limitrofeDe: unPais 
	unPais limitrofeCon: self.
	self limitrofeCon: unPais.
	! !

!Pais methodsFor: 'testing' stamp: 'j 12/9/2021 02:10:15'!
tieneElTestigo: unTestigo 
	^ testigos includes: unTestigo.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Pais class' category: 'TPFinal-CarmenSandiego'!
Pais class
	instanceVariableNames: ''!

!Pais class methodsFor: 'instance creation' stamp: 'MS 11/20/2021 01:14:01'!
conNombre: unNombreDePais conTiempoDeMigraciones: unaCantidadDeTiempoDeMigraciones yConValuable: unValuable conTestigos: conTestigos  
	
	
	^self new initializeConNombre: unNombreDePais conTiempoDeMigraciones: unaCantidadDeTiempoDeMigraciones yConValuable: unValuable conTestigos: conTestigos.! !


!classDefinition: #Partida category: 'TPFinal-CarmenSandiego'!
Object subclass: #Partida
	instanceVariableNames: 'listadoDeSospechosos listadoDePaises detectiveDeLaPartida ubicacionDondeSeEfectuoElRobo ladronDeLaPartida seEmitioUnaOrdenDeArresto seEmitioUnaOrdenDeArrestoIncorrecta archivo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!Partida methodsFor: 'actions' stamp: 'j 12/9/2021 02:54:07'!
emitirOrdenDeArrestoConLasPistasObtenidas

	self emitirOrdenDeArrestoPara: self obtenerAlCulpableConLasPistasObtenidas.! !

!Partida methodsFor: 'actions' stamp: 'j 12/9/2021 19:20:01'!
emitirOrdenDeArrestoPara: unSospechoso 
	
	
	self errorCuandoUnaPartidaEstaFinalizada.
	seEmitioUnaOrdenDeArrestoIncorrecta _ self noEsElLadron: unSospechoso.
	seEmitioUnaOrdenDeArresto _ unSospechoso esLadron.
	
	
	archivo  forceWriteStreamDo: [ :stream | 
	    stream nextPutAll: self textoEscritoHastaElMomento
	    ]
	! !

!Partida methodsFor: 'actions' stamp: 'j 12/6/2021 23:46:08'!
filtrarSospechososConPistasObtenidas
	
	^ listadoDeSospechosos select: [: unSospechoso | unSospechoso coincideConPistasDe: detectiveDeLaPartida ]! !

!Partida methodsFor: 'actions' stamp: 'j 12/9/2021 02:57:02'!
obtenerAlCulpableConLasPistasObtenidas
	^ self filtrarSospechososConPistasObtenidas anyOne.! !

!Partida methodsFor: 'actions' stamp: 'j 12/9/2021 05:22:54'!
realizarInterrogatorioA: unTestigo 
	
	self errorCuandoUnaPartidaEstaFinalizada.
	self errorElTestigoNoSeEncuentraEnElPais: unTestigo.
	^ detectiveDeLaPartida interrogarA: unTestigo.! !

!Partida methodsFor: 'actions' stamp: 'j 12/9/2021 05:19:36'!
realizarViajeA: unPais 
	self errorCuandoUnaPartidaEstaFinalizada.
	self errorAlViajarAUnPaisQueNoExiste: unPais.
	detectiveDeLaPartida viajarA: unPais.! !


!Partida methodsFor: 'testing' stamp: 'j 12/9/2021 04:19:06'!
contieneAlPais: unPais 
	^ listadoDePaises includes: unPais.! !

!Partida methodsFor: 'testing' stamp: 'j 12/9/2021 04:58:56'!
estaElTiempoAgotado

	^ detectiveDeLaPartida limiteDeTiempoAgotado! !

!Partida methodsFor: 'testing' stamp: 'j 12/9/2021 04:59:59'!
estaPerdida
	^ self estaElTiempoAgotado or: self seEmitioUnaOrdenDeArrestoIncorrecta.! !

!Partida methodsFor: 'testing' stamp: 'j 12/9/2021 05:28:48'!
laPartidaEstaFinalizada

	^ self estaPerdida or: self ganada! !

!Partida methodsFor: 'testing' stamp: 'j 12/9/2021 05:10:30'!
noEsElLadron: unSospechoso

	^ unSospechoso esLadron not! !

!Partida methodsFor: 'testing' stamp: 'j 12/6/2021 18:41:27'!
tienePaises
	^ listadoDePaises notEmpty.! !

!Partida methodsFor: 'testing' stamp: 'j 12/6/2021 18:29:54'!
tieneSospechosos
	^ listadoDeSospechosos notEmpty.! !


!Partida methodsFor: 'initialization' stamp: 'j 12/9/2021 18:19:53'!
conUnListadoDeSospechosos: unaListaDeSospechosos conLosPaisesAViajar: unaListaDePaises conDetective: unDetective conLadron: unLadron conArchivo: unArchivo   

	listadoDeSospechosos addAll: unaListaDeSospechosos.
	listadoDePaises addAll: unaListaDePaises.
	detectiveDeLaPartida _ unDetective.
	ubicacionDondeSeEfectuoElRobo _ unDetective ubicacion.
	ladronDeLaPartida _ unLadron.
	ubicacionDondeSeEfectuoElRobo esRobadoPor: unLadron.
	archivo _ unArchivo.! !

!Partida methodsFor: 'initialization' stamp: 'j 12/9/2021 05:39:19'!
initialize
	listadoDeSospechosos _ Set new.
	listadoDePaises _ Set new.
	seEmitioUnaOrdenDeArrestoIncorrecta _ false.
	seEmitioUnaOrdenDeArresto _ false.! !


!Partida methodsFor: 'printing' stamp: 'j 12/9/2021 20:29:16'!
datosDelLadron

	^ 'Nombre del sospechoso: ' 
	, ladronDeLaPartida nombre
	,' ,color de cabello: '
	, ladronDeLaPartida colorDeCabello
	,' ,color de ojos: '
	, ladronDeLaPartida colorDeOjos
	, ' ,forma de cabello: '
	 , ladronDeLaPartida formaDeCabello! !

!Partida methodsFor: 'printing' stamp: 'j 12/9/2021 20:30:42'!
textoEscritoHastaElMomento
	^ String streamContents: [: stream | 
		stream nextPutAll: self datosDelLadron.
		stream newLine.
	     	stream nextPutAll: 'Objeto que robo: ', ladronDeLaPartida objetoRobado.
		stream newLine.
		stream nextPutAll: 'Ruta de escape del ladron: '.
		stream newLine.
	       stream nextPutAll: 'Tiempo restante: ', detectiveDeLaPartida limiteDeTiempo asString.
		stream newLine.
 	       stream nextPutAll: 'Estado de la partida: ', self estadoDeLaPartida.].! !


!Partida methodsFor: 'message error' stamp: 'j 12/9/2021 05:16:53'!
errorAlViajarAUnPaisQueNoExiste: unPais

	^ (self contieneAlPais: unPais) ifFalse: [self error: self mensajeDeErrorAlViajarAUnPaisQueNoExiste]! !

!Partida methodsFor: 'message error' stamp: 'j 12/9/2021 05:28:56'!
errorCuandoUnaPartidaEstaFinalizada

	^ self laPartidaEstaFinalizada ifTrue: [self error: self mensajeDeErrorCuandoUnaPartidaEstaFinalizada].! !

!Partida methodsFor: 'message error' stamp: 'j 12/9/2021 05:21:57'!
errorElTestigoNoSeEncuentraEnElPais: unTestigo

	^ (detectiveDeLaPartida puedeInterrogarA: unTestigo) ifFalse: [ self error: self mensajeDeErrorElTestigoNoSeEncuentraEnElPais ]! !

!Partida methodsFor: 'message error' stamp: 'j 12/9/2021 04:20:20'!
mensajeDeErrorAlViajarAUnPaisQueNoExiste
	^ self class mensajeDeErrorAlViajarAUnPaisQueNoExiste.! !

!Partida methodsFor: 'message error' stamp: 'j 12/9/2021 05:19:59'!
mensajeDeErrorCuandoUnaPartidaEstaFinalizada
	^ self class mensajeDeErrorCuandoUnaPartidaEstaFinalizada.! !

!Partida methodsFor: 'message error' stamp: 'j 12/9/2021 04:20:58'!
mensajeDeErrorElTestigoNoSeEncuentraEnElPais
	^ self class mensajeDeErrorElTestigoNoSeEncuentraEnElPais.! !


!Partida methodsFor: 'accesing' stamp: 'j 12/9/2021 04:29:38'!
costoDeTiempoDelDetectiveAlInterrogarA: unTestigo 
	^ detectiveDeLaPartida costoDeTiempoAlInterrogarA: unTestigo.! !

!Partida methodsFor: 'accesing' stamp: 'j 12/9/2021 03:47:08'!
costoDeTiempoDelDetectiveParaViajarA: unPais 
	^ detectiveDeLaPartida tiempoDeViajeHacia: unPais.! !

!Partida methodsFor: 'accesing' stamp: 'j 12/9/2021 19:17:23'!
estadoDeLaPartida
	^ self ganada ifTrue: ['ganada'] ifFalse: ['perdida'].! !

!Partida methodsFor: 'accesing' stamp: 'j 12/9/2021 05:09:03'!
ganada
	^seEmitioUnaOrdenDeArresto! !

!Partida methodsFor: 'accesing' stamp: 'j 12/6/2021 20:23:31'!
ladron
	^ ladronDeLaPartida.! !

!Partida methodsFor: 'accesing' stamp: 'j 12/9/2021 05:04:52'!
seEmitioUnaOrdenDeArrestoIncorrecta
	^ seEmitioUnaOrdenDeArrestoIncorrecta.! !

!Partida methodsFor: 'accesing' stamp: 'j 12/9/2021 03:50:14'!
tiempoRestante
	^ detectiveDeLaPartida limiteDeTiempo.! !

!Partida methodsFor: 'accesing' stamp: 'j 12/6/2021 19:19:08'!
ubicacion
	^ ubicacionDondeSeEfectuoElRobo.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Partida class' category: 'TPFinal-CarmenSandiego'!
Partida class
	instanceVariableNames: ''!

!Partida class methodsFor: 'as yet unclassified' stamp: 'j 12/9/2021 18:13:21'!
conUnListadoDeSospechosos: unaListaDeSospechosos conLosPaisesAViajar: unaListaDePaises conDetective: unDetective conLadron: conLadron conArchivo: unArchivo   
	^ self new conUnListadoDeSospechosos: unaListaDeSospechosos conLosPaisesAViajar: unaListaDePaises conDetective: unDetective conLadron: conLadron conArchivo: unArchivo.! !

!Partida class methodsFor: 'as yet unclassified' stamp: 'j 12/9/2021 04:13:41'!
mensajeDeErrorAlViajarAUnPaisQueNoExiste
	^ 'No se puede viajar a un pais que no existe en la partida'.! !

!Partida class methodsFor: 'as yet unclassified' stamp: 'j 12/9/2021 05:15:56'!
mensajeDeErrorCuandoUnaPartidaEstaFinalizada
	^ 'No se puede realizar esta accion porque la partida ya esta finalizada'! !

!Partida class methodsFor: 'as yet unclassified' stamp: 'j 12/9/2021 04:20:58'!
mensajeDeErrorElTestigoNoSeEncuentraEnElPais
	^ 'El testigo no se puede interrogar porque no esta en el pais'! !


!classDefinition: #PersonalDigitalAssistant category: 'TPFinal-CarmenSandiego'!
Object subclass: #PersonalDigitalAssistant
	instanceVariableNames: 'pistasGuardadas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!PersonalDigitalAssistant methodsFor: 'initialization' stamp: 'j 12/1/2021 16:47:09'!
anotar: unaPista 
	pistasGuardadas add: unaPista.! !

!PersonalDigitalAssistant methodsFor: 'initialization' stamp: 'SJ 11/28/2021 01:08:48'!
initialize
	
	pistasGuardadas _ Set new.! !


!PersonalDigitalAssistant methodsFor: 'testing' stamp: 'MS 12/6/2021 01:00:27'!
tienePistas
	
	^pistasGuardadas isEmpty.! !


!PersonalDigitalAssistant methodsFor: 'accesing' stamp: 'j 12/7/2021 00:07:20'!
pistasAnotadas
	
	^ pistasGuardadas ! !


!classDefinition: #Pista category: 'TPFinal-CarmenSandiego'!
Object subclass: #Pista
	instanceVariableNames: 'dato'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!Pista methodsFor: 'actions' stamp: 'j 12/9/2021 06:24:06'!
indicarDondeAnotarA: unDetective
	self subclassResponsibility.! !


!Pista methodsFor: 'testing' stamp: 'MS 12/6/2021 01:58:24'!
esDeCaracteristica
	
	self subclassResponsibility.! !

!Pista methodsFor: 'testing' stamp: 'MS 12/6/2021 01:58:27'!
esDeViaje
	
	self subclassResponsibility.! !

!Pista methodsFor: 'testing' stamp: 'MS 12/6/2021 00:10:01'!
tieneInformacion

	^true.! !


!Pista methodsFor: 'accesing' stamp: 'MS 12/8/2021 17:05:09'!
caracteristica
	^ dato.! !


!classDefinition: #PistaDeCaracteristica category: 'TPFinal-CarmenSandiego'!
Pista subclass: #PistaDeCaracteristica
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!PistaDeCaracteristica methodsFor: 'initialization' stamp: 'MS 12/6/2021 00:13:37'!
initializeConCaracteristicaDelSospechoso: unaCaracteristica 
	
	dato _ unaCaracteristica.! !


!PistaDeCaracteristica methodsFor: 'actions' stamp: 'j 12/9/2021 05:48:53'!
indicarDondeAnotarA: unDetective
	unDetective anotarPistaEnPDA: self.! !


!PistaDeCaracteristica methodsFor: 'testing' stamp: 'MS 12/6/2021 01:51:33'!
esDeCaracteristica
	
	^true.! !

!PistaDeCaracteristica methodsFor: 'testing' stamp: 'j 12/1/2021 18:20:26'!
esDeViaje
	^ false.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PistaDeCaracteristica class' category: 'TPFinal-CarmenSandiego'!
PistaDeCaracteristica class
	instanceVariableNames: ''!

!PistaDeCaracteristica class methodsFor: 'instance creation' stamp: 'MS 11/12/2021 00:28:43'!
conCaracteristicaDelSospechoso: unaCaracteristica 
	
	^self new initializeConCaracteristicaDelSospechoso: unaCaracteristica ! !


!classDefinition: #PistaDeViaje category: 'TPFinal-CarmenSandiego'!
Pista subclass: #PistaDeViaje
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!PistaDeViaje methodsFor: 'testing' stamp: 'MS 12/6/2021 01:54:16'!
esDeCaracteristica
	^false.! !

!PistaDeViaje methodsFor: 'testing' stamp: 'j 12/1/2021 18:07:59'!
esDeViaje
	^ true.! !

!PistaDeViaje methodsFor: 'testing' stamp: 'MS 12/6/2021 00:13:28'!
esPistaDeViajeDe: unPais 
	^ dato = unPais.! !


!PistaDeViaje methodsFor: 'accesing' stamp: 'MS 12/6/2021 00:13:28'!
conPais: unPais 
	dato _ unPais.! !


!PistaDeViaje methodsFor: 'actions' stamp: 'j 12/9/2021 05:48:07'!
indicarDondeAnotarA: unDetective
	unDetective guardarPista: self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PistaDeViaje class' category: 'TPFinal-CarmenSandiego'!
PistaDeViaje class
	instanceVariableNames: ''!

!PistaDeViaje class methodsFor: 'as yet unclassified' stamp: 'j 11/25/2021 16:10:24'!
conPais: unaPais 
	^ self new conPais: unaPais.! !


!classDefinition: #PistaSinInformacion category: 'TPFinal-CarmenSandiego'!
Pista subclass: #PistaSinInformacion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!PistaSinInformacion methodsFor: 'testing' stamp: 'MS 12/6/2021 01:57:05'!
esDeCaracteristica
	^false.! !

!PistaSinInformacion methodsFor: 'testing' stamp: 'j 12/6/2021 17:17:14'!
esDeViaje
	^false.! !

!PistaSinInformacion methodsFor: 'testing' stamp: 'j 12/8/2021 20:09:48'!
esPistaDeViajeDe: aPais 
	self shouldBeImplemented.! !

!PistaSinInformacion methodsFor: 'testing' stamp: 'MS 12/6/2021 00:07:34'!
tieneInformacion
	^ false
	! !


!PistaSinInformacion methodsFor: 'actions' stamp: 'j 12/9/2021 06:15:01'!
indicarDondeAnotarA: unDetective
	unDetective noAnotarPista.! !


!classDefinition: #Sospechoso category: 'TPFinal-CarmenSandiego'!
Object subclass: #Sospechoso
	instanceVariableNames: 'nombre colorDeOjos formaDeCabello colorDeCabello caracteristicas objetoRobado'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!Sospechoso methodsFor: 'initialization' stamp: 'j 12/9/2021 03:33:48'!
initialize

	caracteristicas _ OrderedCollection new.
	objetoRobado _ ''.
	! !

!Sospechoso methodsFor: 'initialization' stamp: 'j 11/17/2021 03:48:10'!
initializeConNombre: unNombre colorDeOjos: unColorDeOjos formaDeCabello: unaFormaDeCabello colorDeCabello: unColorDeCabello 
	
	nombre _ unNombre.
	colorDeOjos _ unColorDeOjos.
	formaDeCabello _ unaFormaDeCabello.
	colorDeCabello _ unColorDeCabello.! !


!Sospechoso methodsFor: 'testing' stamp: 'j 11/17/2021 03:41:43'!
coincideCon: unaPista
	^self tieneLaCaracteristica: unaPista caracteristica.! !

!Sospechoso methodsFor: 'testing' stamp: 'j 12/7/2021 00:05:27'!
coincideConPistasDe: unDetective 
	
	^ unDetective pistasDeCaracteristicas allSatisfy: [: unaPista | self coincideCon: unaPista]! !

!Sospechoso methodsFor: 'testing' stamp: 'j 12/9/2021 03:32:41'!
esLadron
	^ objetoRobado notEmpty.! !

!Sospechoso methodsFor: 'testing' stamp: 'j 11/17/2021 00:53:51'!
tieneLaCaracteristica: unaCaracteristica
	^ unaCaracteristica coincideCon: self.
	! !


!Sospechoso methodsFor: 'actions' stamp: 'j 12/9/2021 03:23:50'!
robarObjeto: unObjetoValioso
	objetoRobado _ unObjetoValioso.! !


!Sospechoso methodsFor: 'accesing' stamp: 'MS 11/11/2021 23:37:51'!
colorDeCabello
	
	^colorDeCabello! !

!Sospechoso methodsFor: 'accesing' stamp: 'MS 11/11/2021 23:34:51'!
colorDeOjos
	
	^colorDeOjos! !

!Sospechoso methodsFor: 'accesing' stamp: 'MS 11/11/2021 23:37:17'!
formaDeCabello
	
	^formaDeCabello! !

!Sospechoso methodsFor: 'accesing' stamp: 'MS 11/11/2021 23:33:58'!
nombre
	
	^nombre! !

!Sospechoso methodsFor: 'accesing' stamp: 'j 12/9/2021 18:45:01'!
objetoRobado
	^objetoRobado! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Sospechoso class' category: 'TPFinal-CarmenSandiego'!
Sospechoso class
	instanceVariableNames: ''!

!Sospechoso class methodsFor: 'instance creation' stamp: 'MS 11/11/2021 23:32:37'!
conNombre: unNombre colorDeOjos: unColorDeOjos formaDeCabello: unaFormaDeCabello colorDeCabello: unColorDeCabello 
	
	^self new initializeConNombre: unNombre colorDeOjos: unColorDeOjos formaDeCabello: unaFormaDeCabello colorDeCabello: unColorDeCabello.! !


!classDefinition: #Testigo category: 'TPFinal-CarmenSandiego'!
Object subclass: #Testigo
	instanceVariableNames: 'gradoDeDificultadDeInterrogacion pistas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TPFinal-CarmenSandiego'!

!Testigo methodsFor: 'testing' stamp: 'j 12/9/2021 02:08:51'!
estaUbicadoEn: unPais 
	^ unPais tieneElTestigo: self.! !

!Testigo methodsFor: 'testing' stamp: 'j 12/8/2021 20:13:44'!
tienePistaDeViaje
	^ false.! !

!Testigo methodsFor: 'testing' stamp: 'j 12/2/2021 14:49:46'!
tienePistaDeViaje: unPais 
	^  pistas anySatisfy: [:unaPista|unaPista esPistaDeViajeDe: unPais].! !

!Testigo methodsFor: 'testing' stamp: 'j 11/17/2021 04:43:06'!
tienePistas
	^pistas notEmpty.! !


!Testigo methodsFor: 'initialization' stamp: 'j 11/17/2021 04:42:29'!
initialize
	pistas _ OrderedCollection new.! !

!Testigo methodsFor: 'initialization' stamp: 'MS 11/24/2021 17:55:31'!
initializeConGradoDeDificultad: unGradoDeDificultad 
	
	gradoDeDificultadDeInterrogacion _ unGradoDeDificultad.! !


!Testigo methodsFor: 'actions' stamp: 'j 11/17/2021 04:44:34'!
agregar: unaPista
	pistas add: unaPista.
	! !

!Testigo methodsFor: 'actions' stamp: 'MS 12/8/2021 17:03:46'!
darPista
	
	|pistaAEntregar|
	pistas addLast: (self pistaNula).
	pistaAEntregar _ pistas first.
	pistas remove: pistaAEntregar.
	
	
	^pistaAEntregar
	
	 ! !


!Testigo methodsFor: 'accessing' stamp: 'MS 11/24/2021 18:46:34'!
gradoDeDificultadDeInterrogacion
	
	^gradoDeDificultadDeInterrogacion! !

!Testigo methodsFor: 'accessing' stamp: 'MS 12/8/2021 16:57:58'!
pistaNula
	^ PistaSinInformacion new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Testigo class' category: 'TPFinal-CarmenSandiego'!
Testigo class
	instanceVariableNames: ''!

!Testigo class methodsFor: 'instance creation' stamp: 'MS 11/24/2021 17:52:14'!
conGradoDeDificultadDeInterrogacion: unGradoDeDificultad 
	
	^self new initializeConGradoDeDificultad: unGradoDeDificultad.! !
