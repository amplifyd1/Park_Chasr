The premise of the program is to give the user a platform to keep track of which baseball stadiums that user has visited.  It provides basic information of the stadium and event, including date attended, address, coordinates and distance of user from the stadium location.  A feature I would like to implement, is to have all the stadiums pinned to a dynamic map with the user being able to select each one.  Additionally, it would be nice to have the stadium information pulled instead of coming from the user or hard coded.  

To use this app locally, add your Google API key in the .ENV file:
```
  export GOOGLE_API="YOUR_GOOGLE_API_KEY"
  ```
In addition to the google API key, a cloudinary account will be needed as it handles the images uploaded to and from the application.  You will need to sign up and provide the Cloudinary Enivronment Variable in the .ENV file, you can sign up [here](https://cloudinary.com/console). Export your key in the .ENV file:
```
export CLOUDINARY_URL=[YOUR_CLOUDINARY_URL]
```
If you would like to see and run the RSpec tests for the application, you can run in the terminal:
```bundle exec RSpec``` 

Before starting the application be sure to run ```bundle install``` to install all the dependencies need for this application.
