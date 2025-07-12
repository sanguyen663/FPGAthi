
 add_fsm_encoding \
       {uart_rx.r_SM_Main} \
       { }  \
       {{000 00001} {001 00010} {010 00100} {011 01000} {100 10000} }

 add_fsm_encoding \
       {uart_tx.r_SM_Main} \
       { }  \
       {{000 00} {001 01} {010 10} {011 11} }
