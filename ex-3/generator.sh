#!/bin/bash
echo "Quel est le nom du projet ?"
read name
mkdir $name

echo "#ifndef __FUNCTIONS_H__" > $name/functions.h
echo "#define __FUNCTIONS_H__" >> $name/functions.h
echo "" >> $name/functions.h
echo "#endif" >> $name/functions.h

echo "#include <stdlib.h>" > $name/main.c
echo "#include <stdio.h>" >> $name/main.c
echo '#include "functions.h"' >> $name/main.c
echo "" >> $name/main.c
echo "int main()" >> $name/main.c
echo "{" >> $name/main.c
echo "    exit(0);" >> $name/main.c
echo "}" >> $name/main.c

echo "NAME = $name" > $name/Makefile
echo "" >> $name/Makefile
echo "SRCS = main.c" >> $name/Makefile
echo "" >> $name/Makefile
echo 'all: $(NAME)' >> $name/Makefile
echo "" >> $name/Makefile
echo '$(NAME): $(SRCS)' >> $name/Makefile
printf '\tgcc $(SRCS) -o $(NAME)\n' >> $name/Makefile
echo "" >> $name/Makefile
echo "fclean:" >> $name/Makefile
printf '\trm -f $(NAME)\n' >> $name/Makefile
echo "" >> $name/Makefile
echo "re: fclean all" >> $name/Makefile
