# Adam's Fashion

# Description
Adam's Fashion website is an **ecommence** website full-stack project. It applies **React** for building user interfaces. For Backend, **Strapi**, a headless CMS, is used to create **API**, support **authentication** and handle payment request to connect  **Stripe**. Data is stored in **mySQL**, supplemented by **Amazon S3** for image hosting. 

### Source code: 
 [Frontend](https://github.com/adambone0225/adam-fashion/tree/front-end) :point_left:
 [Backend](https://github.com/adambone0225/adam-fashion/tree/back-end) :point_left:
### Deployed website
[Adam's fashion](https://adamfashion.netlify.app/) :point_left: <br/>
*you can try viewing personal info page and use cart and checkout functions with the account (username: test, password:1234567) or one you register yourself. <br/>
*If you wish to try the checkout function, you can fake personal information on the checkout page and use 4242 4242 4242 4242 as the credit card number.  


# Features
- **Responsive** pages
- **Redux Toolkit** to handle state change in cart and store user information.
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



