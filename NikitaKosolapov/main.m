//
//  main.m
//  Lesson1
//
//  Created by Nikita on 09.02.2021.
//

#import <Foundation/Foundation.h>
#import <math.h>

// 3. Написать программу обмена значениями двух целочисленных переменных:
void changeValues(int *a, int *b) {
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

// 4. Написать программу нахождения корней заданного квадратного уравнения.
void solveQuadraticEquation(CGFloat a, CGFloat b, CGFloat c) {
    CGFloat discriminant = powf(b, 2) - 4 * a * c;

    if (discriminant < 0) {
        NSLog(@"Уравнение не имет действительных корней");
    } else if (discriminant == 0) {
        CGFloat x = (- b - sqrt(discriminant)) / (2 * a);
        NSLog(@"Уравнение имеет один корень: x = %f", x);
    } else {
        CGFloat x1 = (- b - sqrt(discriminant)) / (2 * a);
        CGFloat x2 = (- b + sqrt(discriminant)) / (2 * a);
        NSLog(@"Уравнение имеет два корня: x1 = %f, x2 = %f", x1, x2);
    }
}

// 5. С клавиатуры вводится номер месяца. Требуется определить, к какому времени года он относится.

void checkSeason(int numberOfMonth) {
    switch (numberOfMonth) {
        case 1:
        case 2:
        case 12:
            NSLog(@"It is winter");
            break;
        case 3 ... 5:
            NSLog(@"It is spring");
            break;
        case 6 ... 8:
            NSLog(@"It is summer");
            break;
        case 9 ... 11:
            NSLog(@"It is autumn");
            break;
        default:
            break;
    }
}

// 6. Ввести возраст человека (от 1 до 150 лет) и вывести его вместе с последующим словом «год», «года» или «лет».

void checkAge(int age) {
    switch (age) {
        case 1:
            NSLog(@"%d год", age);
            break;
        case 2 ... 4:
            NSLog(@"%d года", age);
            break;
        default:
            NSLog(@"%d лет", age);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1. Ввести вес и рост человека. Рассчитать и вывести индекс массы тела по формуле I=m/(h*h); где m-масса тела в килограммах, h - рост в метрах.
        double mass;
        double height;

        printf("Input mass: ");
        scanf("%lf", &mass);
        printf("Input height (meters): ");
        scanf("%lf", &height);

        double BMI = mass / pow(height, 2);
        printf("BMI is: %lf \n", BMI);

        // 2. Найти максимальное из четырех чисел. Массивы не использовать.
        NSInteger firstValue = -1;
        NSInteger secondValue = 2;
        NSInteger thirdValue = 3;
        NSInteger fourthValue = -4;

        NSLog(@"Max number is: %ld", MAX(firstValue, MAX(secondValue, MAX(thirdValue, fourthValue))));


        /* 3. Написать программу обмена значениями двух целочисленных переменных:

         a. с использованием третьей переменной;
         b. *без использования третьей переменной. */
        int firstInt = 24;
        int secondInt = 36;
        changeValues(&firstInt, &secondInt);

        NSLog(@"firstInt = %d, secondInt = %d", firstInt, secondInt);

        // 4. Написать программу нахождения корней заданного квадратного уравнения.
        CGFloat a = 1;
        CGFloat b = 5;
        CGFloat c = 3;

        solveQuadraticEquation(a, b, c);

        // 5. С клавиатуры вводится номер месяца. Требуется определить, к какому времени года он относится.
        int numberOfMonth;
        printf("Input month: ");
        scanf("%d", &numberOfMonth);

        checkSeason(numberOfMonth);


        // 6. Ввести возраст человека (от 1 до 150 лет) и вывести его вместе с последующим словом «год», «года» или «лет».
        int age = 4;
        printf("Input age: ");
        scanf("%d", &age);
        checkAge(age);
    }
}

