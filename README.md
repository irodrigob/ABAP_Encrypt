# Utilidades de cifrado

En este paquete se recopilarán utilidades de cifrado en ABAP.

Actualmente el contenido es el siguiente:

* Clase ZCL_CA_HARD_WIRED_ENCRYPTOR -> Esta clase cifra/descrifra texto y xstring. Los métodos principales son:
  * ENCRYPT_STRING2STRING -> Encripta un string. Devuelve un string con el texto cifrado.
  * DECRYPT_STRING2STRING -> Desencripta un string. Devuelve un string con el texto descifrado.
  * ZRUN_TEST -> Método para comprobar que el cifrado/descrifrado funciona. Se le pase un texto no cifrada y la salida tiene que ser igual al texto introducido. De esta manera se comprueba que el proceso es correcto.


