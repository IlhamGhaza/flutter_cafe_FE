# Flutter Cafe POS

A Flutter application for cafe POS management.

## Description

This application is built with Flutter to facilitate cafe POS management. It includes features such as ordering, payment, inventory management, and reporting.

## Backend

The backend of this application can be found on [Github - Laravel Coffeeshop](https://github.com/IlhamGhaza/laravel-coffeshop). It is built using Laravel and provides APIs to be used by this Flutter application.

## Features

<!--- responsive for mobile and tablet.-->
- Food and beverage ordering
- Payment (cash)
- Reporting
- Order history
- manage discount, biaya layanan & pajak, printer 
<!--- CRUD Product: Feature to create, read, update, and delete products from the cafe's menu list.-->
<!--- CRUD Discount: Feature to create, read, update, and delete discounts for cafe products or orders.-->
<!--- Order History: Feature to view previous order history by customers.-->
<!--- Staff Management: Feature to add, delete, and manage cafe staff such as cashiers, waiters, etc.-->

## Installation

1. Make sure you have Flutter installed on your computer. Installation guide can be found at [Flutter Documentation](https://flutter.dev/docs/get-started/install).
2. Clone this repository:

    ```bash
    git clone https://github.com/IlhamGhaza/flutter-pos-cafe.git
    ```

3. Navigate to the project directory:

    ```bash
    cd flutter_cafe
    ```

4. open cmd and type

    ```bash
    ipconfig
    ```

5. follow this [instructions](variables copy.dart)

6. run this command to get the dependencies:

    ```bash
    flutter pub get -v
    ```

    then find your ipv4 address and replace the aseUrl n the li/core/constant/variables.dart wir ipv4 addripv4

7. Make sure you have set up the [Github - Laravel Coffeeshop](https://github.com/IlhamGhaza/laravel-coffeshop) and run before running this Flutter application.

8. Run the application:

    ```bash
    flutter run
    ```

## Contribution

Contributions are always welcome. If you want to contribute to this project, please open an issue or create a pull request.

## License

This project is licensed - see the [LICENSE](LICENSE.md) file for more details.
