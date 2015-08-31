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
