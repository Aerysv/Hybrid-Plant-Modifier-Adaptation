
%% Establecer conexión con el servidor
uaClient = opcua('Daniel',16700);   % Crear Instancia de OPC UA
connect(uaClient);                  % Conectarse al servidor
topNodes = uaClient.Namespace;      % Obtener espacio de nombres

% Creación de nodos para recibir datos
% Para leer se usa el método .readValue
% Medidas del proceso
Cb = findNodeByName(topNodes, 'Cb', '-once');
Cd = findNodeByName(topNodes, 'Cd', '-once');
q  = findNodeByName(topNodes, 'q' , '-once');
Fr = findNodeByName(topNodes, 'qc', '-once');
T  = findNodeByName(topNodes, 'T' , '-once');
Tc = findNodeByName(topNodes, 'Tc', '-once');
T0 = findNodeByName(topNodes, 'T0', '-once');
Tc0 = findNodeByName(topNodes, 'Tc0', '-once');
% Parámetros del controlador
Cb_sp = findNodeByName(topNodes, 'Cb_sp', '-once');
T_sp  = findNodeByName(topNodes, 'T_sp' , '-once');

LiminfT  = findNodeByName(topNodes, 'LiminfT' , '-once');
LiminfCb = findNodeByName(topNodes, 'LiminfCb', '-once');
Liminfq  = findNodeByName(topNodes, 'Liminfq' , '-once');
LiminfFr = findNodeByName(topNodes, 'Liminfqc', '-once');

LimsupT  = findNodeByName(topNodes, 'LimsupT' , '-once');
LimsupCb = findNodeByName(topNodes, 'LimsupCb', '-once');
Limsupq  = findNodeByName(topNodes, 'Limsupq' , '-once');
LimsupFr = findNodeByName(topNodes, 'Limsupqc', '-once');

beta1 = findNodeByName(topNodes, 'beta[1]' , '-once');
beta2 = findNodeByName(topNodes, 'beta[2]' , '-once');

gamma1 = findNodeByName(topNodes, 'gamma[1]' , '-once');
gamma2 = findNodeByName(topNodes, 'gamma[2]' , '-once');

% Creación de nodos para escribir datos
% Para escribir se usa el método .writeValue
% Estos dos nodos aparecen como de solo lectura en el servidor que creó
% Daniel para su MPC. En el nuevo servidor depende ser write/read
uq1  = findNodeByName(topNodes, 'uq[1]' , '-once');
uFr1 = findNodeByName(topNodes, 'uqc[1]', '-once');


%% Controlador
% Debe haber un ciclo while actualizando los valores continuamente
% Leer datos de la planta con .readValue

% EJECUTAR CÓDIGO DE ERIKA solo si ControlFlag = 1
% Escribir las acciones de control con .WriteValue


