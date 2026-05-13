# DF9 - Navegacion

## Cambios implementados

- Desde `ZoomLiga` se agrego un boton **Ver equipos de esta liga** que navega a `SelectEquipo`.
- En `ZoomLiga` tambien se agrego una lista embebida con los equipos relacionados a la liga actual.
- Desde `ZoomJugador` se agrego el boton **Ver posiciones** que navega a `SelectPosicion` usando navegacion custom, porque `jugador` y `posicion` no tienen una relacion directa. La relacion real pasa por la tabla intermedia `jugadorposicion`.

## Eventos de navegacion en orden

1. El usuario inicia la navegacion desde un objeto, por ejemplo un boton, menu o fila de una lista.
2. El objeto que invoca ejecuta `OnGetNavigateForwardData`.
3. DataFlex completa la estructura `tWebNavigateData`.
4. La vista destino ejecuta `OnNavigateForward`.
5. La vista destino carga o prepara sus datos con `OnLoad`, segun corresponda.
6. Antes de mostrarse, la vista destino ejecuta `OnBeforeShow`.
7. La vista destino se muestra y ejecuta `OnShow`.
8. Si el usuario vuelve o cierra la vista, el objeto de la vista destino puede ejecutar `OnGetNavigateBackData`.
9. La vista u objeto que habia invocado la navegacion recibe `OnNavigateBack`.

## Participantes

- `InvokingView`: vista desde donde se inicia la navegacion.
- `InvokingObject`: objeto puntual que dispara la navegacion, por ejemplo boton, menu item o lista.
- `InvokedView`: vista destino.
- `InvokedObject`: objeto destino, cuando aplica.
- `StackView`: pila de vistas que administra el recorrido de navegacion.

## Tipos usados en esta app

- `ntNavigateBegin`: navegacion desde menu o dashboard hacia una vista inicial.
- `ntNavigateForward`: navegacion normal entre vistas con relacion o flujo registrado.
- `ntNavigateForwardCustom`: navegacion personalizada; en este caso se usa desde jugador hacia posiciones porque no hay relacion directa entre ambas tablas.
