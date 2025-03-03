void main(List<String> agruments) {
    int number = int.parse(agruments[0]);


    if (number > 0) {
        print('$number is postive');
    } 
    else if (number == 0) {
        print('$number is zero');
    } else {
        print('$number is nagative');
    }
}