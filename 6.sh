#!/bin/bash
# to run enter bash 6.sh
echo '1. Paruoškite duomenų bazės kopiją.'
mysqldump -u root -p knygos > knygos_bk.sql
