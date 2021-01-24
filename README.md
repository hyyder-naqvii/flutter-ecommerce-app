
# Flutter Ecommerce App
A simple ecommerce app being written in flutter with firebase as backend

## Features Currently Implemented

#### User Authentication (Register/Login) using Firebase Auth
Start Screen | Registration Screen |
--- | --- |
<img src="https://github.com/hyyder-naqvii/flutter-ecommerce-app/blob/master/screenshots/start_screen.png" width="250" height="500">| <img src="https://github.com/hyyder-naqvii/flutter-ecommerce-app/blob/master/screenshots/register_screen.png" width="250" height="500">|

The registration process is completely implemented. It uses **Firebase Auth** as a backend. User Data is stored in **Cloud Firestore**
___
#### Products
Menu | Product Details |
--- | --- |
<img src="https://github.com/hyyder-naqvii/flutter-ecommerce-app/blob/master/screenshots/menu.png" width="250" height="500">| <img src="https://github.com/hyyder-naqvii/flutter-ecommerce-app/blob/master/screenshots/product_details.png" width="250" height="500">|

Menu is fully functional except for the search button. It retrieves product information form the firestore backend. currently product images are stored in firestore as a list of integers **UInt8List**. This however is quite slow. The goal is to update the product feature to store images in **Cloud Storage**.

Product Details are also shown. we can currently add products to cart. It works just fine but it uses SQFLite backend. I'm updating it to use Firestore instead and it'll work soon.

#### User Authentication (Register/Login) using Firebase Auth
User Profile | Update Profile |
--- | --- |
<img src="https://github.com/hyyder-naqvii/flutter-ecommerce-app/blob/master/screenshots/user_profile.png" width="250" height="500">| <img src="https://github.com/hyyder-naqvii/flutter-ecommerce-app/blob/master/screenshots/profile_update.png" width="250" height="500">|

User profile currently has 4 planned features
* Change profile pic
* Update profile information
* View cart
* View previous orders

Only first two features are implemented completely.
User profile image is stored inside cloud storage. Rest of the user information is stored in cloud firestore
