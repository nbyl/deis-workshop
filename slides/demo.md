deis.io
=======

### Registrierung & Keys hinzufügen

    deis register http://deis.local3.deisapp.com
    deis keys:add

### Neue Applikation erstellen

    deis create
    git remote -v show

### Erstes Deployment

    git push master deis

### Konfiguration

    deis config:list
    deis config:set APP_DEFAULTGREETER=codecentric

### Skalierung

    deis scale web=3
    deis scale web=1

### CRUD (Extended Edition)

    deis config:list
    deis config:set SPRING_DATA_MONGODB_HOST=172.17.8.102

#### Person anlegen (POST) -> http://<app>.local3.deisapp.com/people

{  "firstName" : "Frodo",  "lastName" : "Baggins" }

#### Personen auslesen (GET) -> http://<app>.local3.deisapp.com/people
