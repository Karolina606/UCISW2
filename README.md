# Typing tutor - VHDL project for Spartan 3E

Program "Typing tutor" będzie łączył w sobie funkcjonalności klawiatury, czytnika kart SD oraz generatora dźwięku na płytce Spartan. Zdanie czytane z karty SD będzie wzorem poprawności dla wejścia użytkownika.

# Katalogi
### **typing_tutor** 
* Zawiera (aktualnie) schemat układu sczytującego zdanie z pliku .txt znajdującego się w katalogu głównym karty SD. Nazwa pliku podawana jest na przełącznikach układu (w sposób binarny, ponieważ nazwa zawiera się od 0.txt do 9.txt), rozszerzenie pliku na schemacie zadane jest na stałe jako .txt (VCC, GND). Kolejne bajty odczytane z pliku powinny być widoczne na wyświetlaczu VGA.
* Plik testbench nie jest tutaj istotny.
### **typing_tutor_symulacja**
* Zawiera (aktualnie) uproszczony schemat, na którym wyeliminowano moduł SDC_FileReader, w jego zastępstwo w pliku testbenchu **typing_tutor.tb** utworzono proces, który imituje działanie modułu (*linie 117-137*).

* Aby symulacja działała poprawnie należy zastąpić ścieżki w testbenchu w liniach *56, 99*, na ścieżki do zapisu bitmapy imitującej wyświetlacz VGA na własnym komputerze.

* Ścieżkę w linii *119* zamienić na ściężkę do pliku tekstowego (np. 1.txt) na własnym komputerze.
### **typing_test**
* Zawiera schematy oraz pliki wykonane na zajęciach. Schemat "tutor.sch" zakłada przełączanie wejścia z karty SD na klawiaturę po wciśnięciu przycisku. Schemat "tutor_v2.sch" zakłada użycie maszyny stanów do takiej samej czynności (Zakłada, bo nie wiadomo czy działa xD).
