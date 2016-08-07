# Much Free, Very Wow # ![doge](http://vignette4.wikia.nocookie.net/petitcomputer/images/5/57/Meme_doge_icon_by_euamodeus-d6kngqa.png/revision/latest?cb=20131105002545)
---
Much Free, Very Wow is a CRUD Sinatra app where users can signup, login, and contribute free activities to do in NYC.

* Both users and activities are saved into a SQLite3 database upon creation.
* Activity details can be viewed at the their RESTful URL. For example, if an activity named "Free Comedy Show" is created, the details can be viewed at /activites/free-comedy-show.
* Activities can also be edited or deleted but only by the user who created the activity.
