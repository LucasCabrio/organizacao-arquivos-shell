#!/bin/bash

touch exemplo.txt
touch documento.pdf
touch foto.jpg
touch imagem.png
touch programa.c
touch script.sh
touch planilha.xls

contador=0

mkdir -p organizacao/textos
mkdir -p organizacao/imagens
mkdir -p organizacao/codigos
mkdir -p organizacao/outros

for arquivo in *; do

    if [ -f "$arquivo" ]; then

        case "$arquivo" in

            *.txt|*.pdf)
                mv "$arquivo" organizacao/textos/
                contador=$((contador+1))
                ;;

            *.jpg|*.png)
                mv "$arquivo" organizacao/imagens/
                contador=$((contador+1))
                ;;

            *.c|*.sh)
                mv "$arquivo" organizacao/codigos/
                contador=$((contador+1))
                ;;

            *)
                mv "$arquivo" organizacao/outros/
                contador=$((contador+1))
                ;;

        esac

    fi

done

echo "Organização concluída com sucesso!"
echo "Total de arquivos movidos: $contador"
