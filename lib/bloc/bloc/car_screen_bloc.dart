import 'package:bloc/bloc.dart';
import 'package:lesson43_1/main.dart';
import 'package:lesson43_1/models/cars_model.dart';
import 'package:meta/meta.dart';

part 'car_screen_event.dart';
part 'car_screen_state.dart';

class CarScreenBloc extends Bloc<CarScreenEvent, CarScreenState> {
  CarScreenBloc() : super(CarScreenInitial()) {
    on<CarScreenEvent>((event, emit) async {
      if (event is CarInfoEvent) {
        try {
          emit(CarLoadingState());

          await Future.delayed(const Duration(seconds: 1));

          List<CarModel> carsModelList = [
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//e/7/a/e7a69a021d72a7ef5f51f31c042121ea_640x480.jpg',
              dollar: '& 11 200',
              som: '918 848 сом',
              marka: 'Toyota Camry',
              dvigatel: 'белый,седан,бензин',
              age: '2004 г.,2.4, автомат',
              kilometr: 'руль слева, 214 000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '12 часов назад',
              photo: '12',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//c/b/7/cb7ee054acb04e23e6550330c343e0a3_640x480.jpg',
              dollar: '& 49 000',
              som: '4 019 960 сом',
              marka: 'Lexus Es',
              dvigatel: 'черный,седан,гибрид',
              age: '2019 г.,2.5, вариатор',
              kilometr: 'руль слева, 37315 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '10 часов назад',
              photo: '15',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//5/7/2/572b72b78536345cd8d2428b564a74cc_640x480.jpg',
              dollar: '& 68000',
              som: '5 578 729 сом',
              marka: 'Range Rover Velar',
              dvigatel: 'хамелеон,внедорожник 5 дв.,дизель',
              age: '2017 г.,3.0, автомат',
              kilometr: 'руль слева, 72000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '9 часов назад',
              photo: '10',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//2/b/0/2b04c9ed0d2477fb220a27f6805b88c1_640x480.jpg',
              dollar: '& 38000',
              som: '3117 520сом',
              marka: 'BMW 5 Серия VII',
              dvigatel: 'черный,седан,дизель',
              age: '2017 г.,2.0, автомат',
              kilometr: 'руль слева, 90000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '8 часов назад',
              photo: '18',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//d/1/3/d135a5ffb1b5dc9d70904f6c2bb021e7_640x480.jpg',
              dollar: '& 8800',
              som: '721 952 сом',
              marka: 'Mercedes-Benz E-класс II ',
              dvigatel: 'черный,седан,бензин',
              age: '2000 г.,4.3, автомат',
              kilometr: 'руль слева, 205000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '7 часов назад',
              photo: '13',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//5/7/5/575bf9176b478b589138cbc3f949278a_640x480.jpg',
              dollar: '& 85 000',
              som: '6 973 400 сом',
              marka: 'Lexus LX III Рестайлинг 2 ',
              dvigatel: 'белый,внедорожник 5 дв.,дизель',
              age: '2016 г.,4.5, автомат',
              kilometr: 'руль слева, 137 000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '6 часов назад',
              photo: '19',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//8/5/7/8579706e0bda15ffe5690eeb37a5a0c7_640x480.jpg',
              dollar: '& 26 500',
              som: '2 174 060 сом',
              marka: 'Toyota RAV4 IV (CA40) ',
              dvigatel: 'черный,внедорожник 5 дв.,гибрид',
              age: '2017 г.,2.5,вариатор ',
              kilometr: 'руль слева, 75 000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '5 часов назад',
              photo: '14',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//4/3/3/433678798b3a8e672c9c30829a86a88a_640x480.jpg',
              dollar: '& 15 200',
              som: '1 247 008 сом',
              marka: 'Hyundai Sonata VII (LF)',
              dvigatel: 'серебрo,седан., газ',
              age: '2018 г.,2.4,автомат',
              kilometr: 'руль слева, 10 000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '4 часов назад',
              photo: '9',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//9/9/8/9984052aacd8ddc1e1fa976fc3092ee0_640x480.jpg',
              dollar: '& 19 200',
              som: '1 575 168 сом',
              marka: 'Kia K5 II Седан 1.7',
              dvigatel: 'белый,седан.,дизель',
              age: '2016 г.,1.7,робот',
              kilometr: 'руль слева, 134 000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '3 часов назад',
              photo: '15',
            ),
            CarModel(
              imageUrl:
                  'https://im.mashina.kg/tachka/images//e/b/e/ebe5e4a1e7c2115d5d6882a278df844f_640x480.jpg',
              dollar: '& 2 316',
              som: '190 000 сом',
              marka: 'ВАЗ (Lada) 2107 21074-30 ',
              dvigatel: 'белый,camry,бензин',
              age: '2010 г.,1.6,механика',
              kilometr: 'руль слева, 95 000 км',
              text: '@ Премиум',
              city: 'Бишкек',
              time: '2 часов назад',
              photo: '8',
            ),
          ];

          carsModelList.removeWhere((element) =>
              !element.marka!.toLowerCase().contains(event.name.toLowerCase()));

          // carsModelList.removeWhere((element) => !element.dvigatel!
          //     .toLowerCase()
          //     .contains(event.name.toLowerCase()));
          // carsModelList.sublist(event.length);

          emit(CarLoadedState(carsModelList: carsModelList));
        } catch (e) {}
      }
    });
  }
}
