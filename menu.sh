_menu()
{
    echo ' '
    echo 'Apache Tomcat 770'
    echo 'Selecciona una opcion:'
    echo
    echo '1) Bajar '
    echo '2) Subir '
    echo '3) Apuntar a "A" '
    echo '4) Apuntar a "B" '
    echo '5) Nueva Opcion'
    echo '6) Ver db.properties actual '
    echo
    echo '9) Salir '
    echo
    echo -n ' Indica una opcion: '
}
 
_bajar()
{
    clear
    echo ' Bajar 770'
    cd /software/webservers/apache-tomcat-6.0.35-770-NEW/bin
    pwd 
    echo 
    echo 'Corriendo shutdown.sh ...'
    echo 
    ./shutdown.sh
    echo 'Abajo'
}

_subir()
{
    clear
    echo ' Subir 770'
    cd /software/webservers/apache-tomcat-6.0.35-770-NEW/bin/
    pwd 
    echo 
    echo ' Corriendo startup.sh ...'
    echo 
    ./startup.sh
    echo 'Arriba'
}

_apuA()
{
    clear
    echo ' Apuntando a A ...'
    cd /software/webservers/apache-tomcat-6.0.35-770-NEW/dac
    cp db.properties.produccion.A db.properties
    echo ' '
    cat db.properties
}

_Nueva()
{
    clear
    echo ' Nueva Ruta'
    cd /software/webservers/


_apuB()
{
    clear
    echo ' Apuntando a B ...'
    cd /software/webservers/apache-tomcat-6.0.35-770-NEW/dac
    cp db.properties.produccion.B db.properties
    echo ' '
    cat db.properties
}

_propAct()
{
    clear
    echo ' Config Actual '
    cd /software/webservers/apache-tomcat-6.0.35-770-NEW/dac
    cat db.properties
}

#=====================================================================

opc="0" 

until [ "$opc" -eq "9" ];

do
    case $opc in
        1)
            _bajar
            _menu
            ;;
        2)
            _subir
            _menu
            ;;
        3)
            _apuA
            _menu
            ;;
        4)
            _apuB
            _menu
            ;;
        5)
            _propAct
            _menu
            ;;
        *)
            clear
            _menu
            ;;
    esac
    read opc
done