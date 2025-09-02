List<int> fib = [0, 1, 1, 2, 3, 5, 8, 13];
Set<double> weather = {87, 86, 83, 82, 75};
Map<String, int> flavors = {
    'vanilla': 10,
    'strawberry': 8,
    'chocolate': 7,
};

typedef Car = ({String make, String model, int year, double price});
late Car car;

print_car(Car car) {
    print('I drive a ${car.year} ${car.make} ${car.model} and it cost me ${car.price}.');
}

main() {
    car = ('Honda', 'Accord', 1991, 3500);
    print(car);
    print_car(car);
}
