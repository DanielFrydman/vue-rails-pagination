## :rocket: Project
The developed application is a generic pagination approach made with Ruby on Rails(API only) and VueJS.
<br>
Its goal is to paginate all the users in the system with the best performance that I can get.

## :technologist: Used Technologies
- `Ruby`: Version 3.3.0
- `Rails`: Version 7.1.3
- `PostgreSQL`: Latest
- `Node`: Version 21.6.0
- `Vue`: Version 3.3.11
- `Vite`: Version 5.0.8
- `Tailwindcss`: Version 3.4.1
- `Docker`: Version  24.0.7
- `Docker Compose`: Version 1.29.2
- `Npm`: Version 10.3.0
- `Git`: Version 2.39.3

## :wrench: Gems added
- `rspec-rails`: Added for testing the backend
- `factory_bot_rails`: Added to create factories for testing
- `faker`: Added to create fake data for testing
- `byebug`: Added to debug the project
- `rack-cors`: Added to allow external requests to the API
- `rubocop`: Added to lint the project (to ensure the same code style)
- `simplecov`: Added to check test coverage report
- `pagy`: Added to allow pagination on the backend

## :hammer: Libs added
- `eslint`: Added to lint the project (to ensure the same code style)
- `prettier`: Added to ensure code consistency and readability through automatic formatting.
- `vue-axios`: Added to have streamlines HTTP requests in Vue.js applications
- `vue-router`: Added to have the official Vue.js routing library for seamless navigation.

## :roller_coaster: Results


## :pushpin: Information
You can test the application in the following URL: **link**.
<br>
The page may take a while to load as it is a free service and the system sleeps but once it loads, it is quick.
<br>
The PostgreSQL DB in Render will be erased after 90 days.
<br>
***Please be aware that the link may be inactive, depending on when you access my repository, as the Render database associated with the free version could potentially have expired. Thank you for your understanding.***

## 📁 Access to the project
```shell
git@github.com:DanielFrydman/vue-rails-pagination.git
```

## 🐳 Run the project
- In order to run the project you must: 
```shell
cd vue-rails-pagination
```
- Into the vue-rails-pagination folder, you'll find the docker-compose.yml. To start the Postgresql, run:
```shell
docker compose up -d
```
- Now we need to create the database and run the migrations:
```shell
rails db:create db:migrate db:seed
```
- You can start the server by running:
```shell
rails server
```
- To start the frontend, open another terminal and enter the client folder:
```shell
cd client
```
- Then install the dependencies with:
```shell
npm install
```
- Now, you can start the server by typing:
```shell
npm dev run
```
The backend will be running at **http://localhost:3000** and the frontend will be running at **http://localhost:5173**, but you only need to open the frontend link since the backend is Rails API-only.

## :books: Considerations
Imagining that we could have 70 milions of users, I prefered to paginate on the backend because we avoid passing to much data to the client-side. The Pagy gem for RoR is great for this job and is much faster, lighter, simpler and efficient than the other ones.
https://github.com/ddnexus/pagy