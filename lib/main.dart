import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson43_1/bloc/bloc/car_screen_bloc.dart';
import 'package:lesson43_1/components/custom_button.dart';
import 'package:lesson43_1/components/custom_card.dart';
import 'package:lesson43_1/models/cars_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetCarScreen(),
    );
  }
}

class GetCarScreen extends StatefulWidget {
  const GetCarScreen({Key? key}) : super(key: key);

  @override
  State<GetCarScreen> createState() => _GetCarScreenState();
}

class _GetCarScreenState extends State<GetCarScreen> {
  late CarScreenBloc bloc;

  @override
  void initState() {
    bloc = CarScreenBloc();
    bloc.add(CarInfoEvent(name: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.dehaze_rounded),
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
        ],
        title: Text(
          'Автомобили',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          children: [
            const ButtonsCard(),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.text,
              onChanged: (value) {
                bloc.add(CarInfoEvent(name: value));
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.deepPurpleAccent, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(7),
                ),
                hintText: 'Search ...',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BlocConsumer<CarScreenBloc, CarScreenState>(
              bloc: bloc,
              listener: (context, state) {},
              builder: (context, state) {
                print(state);

                if (state is CarLoadingState) {
                  return CircularProgressIndicator();
                } else if (state is CarLoadedState) {
                  return Expanded(
                    child: ListView.separated(
                      itemCount: state.carsModelList.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                      itemBuilder: (context, index) {
                        CarModel carsList = state.carsModelList[index];

                        return CustomCard(
                            imageUrl: carsList.imageUrl ?? '',
                            dollar: carsList.dollar ?? '',
                            som: carsList.som ?? '',
                            marka: carsList.marka ?? '',
                            dvigatel: carsList.dvigatel ?? '',
                            age: carsList.age ?? '',
                            kilometr: carsList.kilometr ?? '',
                            text: carsList.text ?? '',
                            city: carsList.city ?? '',
                            time: carsList.time ?? '',
                            photo: carsList.photo ?? '');
                      },
                    ),
                  );
                } else if (state is CarErrorState) {}
                return SizedBox();
              },
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsCard extends StatelessWidget {
  const ButtonsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CustomButton(
              icon: Icon(Icons.style_rounded),
              text: ('Запчасти'),
            ),
            SizedBox(
              width: 5,
            ),
            CustomButton(
              icon: Icon(Icons.miscellaneous_services_outlined),
              text: ('  Услуги'),
            ),
            SizedBox(
              width: 5,
            ),
            CustomButton(
              icon: Icon(Icons.local_shipping_sharp),
              text: ('Грузовые'),
            ),
            SizedBox(
              width: 5,
            ),
            CustomButton(
              icon: Icon(Icons.agriculture_outlined),
              text: ('Спецка'),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: const [
            CustomButton(
              icon: Icon(Icons.commute_sharp),
              text: ('Новинки '),
            ),
            SizedBox(
              width: 5,
            ),
            CustomButton(
              icon: Icon(Icons.directions_car_rounded),
              text: ('Автбиз '),
            ),
            SizedBox(
              width: 5,
            ),
            CustomButton(
              icon: Icon(Icons.car_crash_outlined),
              text: ('ПровтVIN'),
            ),
            SizedBox(
              width: 5,
            ),
            CustomButton(
              icon: Icon(Icons.bike_scooter_outlined),
              text: ('Мотoцк'),
            ),
          ],
        ),
      ],
    );
  }
}
