# adam-fashion

# Description
Adam Fashion website is an **ecommence** website full-stack project. It applies **React** for building user interfaces. For Backend, **Strapi**, a headless CMS, is used to create **API**, support **authentication** and handle payment request via **Stripe**. Data is stored in **mySQL**, supplemented by **Amazon S3** for image hosting. 

### Source code: 
**Frontend**: go to [frontend](https://github.com/adambone0225/adam-fashion/tree/front-end) :point_left:
**Backend** : go to [backend](https://github.com/adambone0225/adam-fashion/tree/back-end) :point_left:
 


# Features
- **Responsive** pages
- **JWT**-based authentication and authorization, provided by Strapi
- Shop item list built with **CSS grid**, which can be filtered and sorted.
- User Info page and shopping cart protected by JWT
- Placed orders can be viewed on the user info page

![website demonstration](/../front-end/demonstration.gif)


# Project Set-up

## 1. Get this repository
```
git clone -b back-end https://github.com/adambone0225/adam-fashion.git back-end
git clone -b front-end https://github.com/adambone0225/adam-fashion.git front-end
```
## 2. Get the dependency
```
cd frontend
npm install
```
```
cd ..
cd backend
npm install 
```
## 3. insert data in local database
In MySQL Workbench, go to File -> Open SQL Script and choose the .sql file from backend/.tmp to insert data for the project.

## 4. Run the project
In frontend
```
cd frontend
npm start
```
In backend
```
cd ..
cd backend
npm run develop
```
## 5. log in in the Strapi dashboard
Once u run the script (npm run develop), you will be redirected to the login page ([dashboard](http://localhost:1337/admin)).
Feel free to check the schema through the Strapi dashboard using the account: </br>
username: user@test.com</br>
password: Testing1234



