*&---------------------------------------------------------------------*
*& Report ZCA_R_ENCRYP_STRING
*&---------------------------------------------------------------------*
*& Descripción hace uso de la clase: ZCL_CA_HARD_WIRED_ENCRYPTOR
*& para encriptar/desencriptar textos
*&---------------------------------------------------------------------*
REPORT zca_r_encryp_string.

PARAMETERS: p_value TYPE string LOWER CASE.

PARAMETERS: p_enc RADIOBUTTON GROUP g1,
            p_des RADIOBUTTON GROUP g1.

START-OF-SELECTION.

  TRY.

      DATA(lo_encryp) = NEW zcl_ca_hard_wired_encryptor( ).
      DATA(lv_salida) = VALUE string( ).

      IF p_enc = abap_true.
        lv_salida = lo_encryp->encrypt_string2string( the_string = p_value ).
      ELSE.
        lv_salida = lo_encryp->decrypt_string2string( the_string = p_value ).

      ENDIF.

      WRITE:/'Resultado --> ', lv_salida.

    CATCH cx_encrypt_error. " Error During Encryption or Decryption
      WRITE:/ 'Error en el proceso'.
  ENDTRY.
