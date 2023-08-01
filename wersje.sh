

## aplikacja która pokazuje jaka jest wersja aplikacji która jest zainsttalowana na tomcatach :)

# echo "Podaj lokalizację:"
# read lokalizacja

# ile_tomcatow=$(ls -l "$lokalizacja" | grep tomcat | awk '{print $9}')
sciezka=$(grep -l -R '<display-name>' /opt)


for tomcat in $sciezka
do
    cat $tomcat | awk -F'[<>]' '/<display-name>/{print $3}' >> wynik.txt
done 
