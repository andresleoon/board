# Board
[![Build Status](https://travis-ci.org/PabloVallejo/board.svg?branch=master)](https://travis-ci.org/PabloVallejo/board)

Simple assignments app

![Board](https://raw.githubusercontent.com/PabloVallejo/board/master/screenshot.png)

### Getting started

Install [Docker](https://www.docker.com/) and build the app.

```bash
$ docker-compose build
$ docker-compose up
```

then open in browser http://localhost:3000

### Don't forget apply the migration 
Run this command 

```bash
$ docker-compose build
```

After, Copy this id , The id can be different, but sure the name container is board_web 
 
![Board](http://i.imgur.com/lQpCyyv.png)

After that run that command
```bash
$ docker exec 3c76d60c9e93 bin/rails db:migrate RAILS_ENV=development
```

and enjoy !!
