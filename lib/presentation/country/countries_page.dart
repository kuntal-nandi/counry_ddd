import 'package:auto_route/auto_route.dart';
import 'package:country/presentation/country/settings/country_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/country/country_bloc.dart';
import '../routes/app_router.gr.dart';
import '../utils/error_utils.dart';

class CountryView extends StatefulWidget {
  const CountryView({Key? key}) : super(key: key);

  @override
  State<CountryView> createState() => _CountryViewState();
}

class _CountryViewState extends State<CountryView> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    BlocProvider.of<CountryBloc>(context).add(const CountryEvent.fetch());
    super.initState();
  }

  List<String> selectedLanguages = [];
  @override
  Widget build(BuildContext context) {
    final countryBloc = context.watch<CountryBloc>();
    final countryState = countryBloc.state;
    languageListDialog(BuildContext context) {
      return showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return BlocBuilder<CountryBloc, CountryState>(
              buildWhen: (previous, current) =>
                  previous.isFetching != current.isFetching ||
                  previous.languageList != current.languageList,
              builder: (context, state) {
                if (state.isFetching) {
                  return Container(
                      alignment: Alignment.center,
                      height: 600,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blueAccent,
                        ),
                      ));
                }
                if (!state.isFetching && state.languageList.isNotEmpty) {
                  return Container(
                    height: 600,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Text(
                          'Languages List',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: state.languageList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return CheckboxListTile(
                                  value: selectedLanguages
                                      .contains(state.languageList[index]),
                                  onChanged: (bool? value) {
                                    if (value == true) {
                                      setState(() {
                                        selectedLanguages
                                            .add(state.languageList[index]);
                                      });
                                    } else {
                                      setState((){
                                        selectedLanguages
                                            .remove(state.languageList[index]);
                                      });
                                    }
                                  },
                                  title: Text(
                                    state.languageList[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700),
                                  ),
                                );
                              }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: const BorderSide(
                                          width: 2.0, color: Colors.blue),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        selectedLanguages = [];
                                      });
                                    },
                                    child: const Text(
                                      'Reset Filter',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                              ),
                              SizedBox(
                                width: 150,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue),
                                    onPressed: () {
                                      setState(() {
                                        countryBloc.add(
                                            CountryEvent.filterByLanguage(
                                                searchLanguages:
                                                    selectedLanguages));
                                        selectedLanguages = [];
                                        Navigator.pop(context);
                                      });
                                    },
                                    child: const Text(
                                      'Apply Filter',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }
                return Container(
                  height: 600,
                  padding: const EdgeInsets.all(16),
                  child: const Center(
                    child: Text('No languages to filter data'),
                  ),
                );
              },
            );
          });
        },
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 20),
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: const Text(
              'Select a Country',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: searchController,
                    cursorColor: Colors.white,
                    decoration: const InputDecoration(
                        hintText: 'Search a country Name',
                        filled: true,
                        fillColor: Colors.grey,
                        focusColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                IconButton(
                    onPressed: () {
                      languageListDialog(context);
                    },
                    icon: Icon(
                      Icons.filter_list_sharp,
                      size: 40,
                      color: Colors.blue.shade900,
                    )),
                const SizedBox(
                  width: 6,
                ),
                IconButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (countryState.isFetching == false) {
                        countryBloc.add(
                            CountryEvent.filter(key: searchController.text));
                      }
                    },
                    icon: Icon(
                      Icons.search_sharp,
                      size: 40,
                      color: Colors.blue.shade900,
                    ))
              ],
            ),
          ),
          BlocConsumer<CountryBloc, CountryState>(
            listenWhen: (previous, current) =>
                previous.failureOrSuccessOption !=
                current.failureOrSuccessOption,
            listener: (context, state) => state.failureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  ErrorUtils.handleApiFailure(context, failure);
                },
                (_) {},
              ),
            ),
            buildWhen: (previous, current) =>
                previous.isFetching != current.isFetching ||
                previous.filteredCountryList != current.filteredCountryList,
            builder: (context, state) {
              if (state.isFetching) {
                return Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        child: const CircularProgressIndicator(
                          color: Colors.blueAccent,
                        )));
              } else if (state.isFetching == false &&
                  state.filteredCountryList.isNotEmpty) {
                return Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 10),
                      itemCount: state.filteredCountryList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CountryTile(
                            onTap: () {
                              AutoRouter.of(context).push(CountryDetailsRoute(
                                  country: state.filteredCountryList[index]));
                            },
                            countryName: state.filteredCountryList[index].name,
                            code: state.filteredCountryList[index].phone,
                            flag: state.filteredCountryList[index].emoji);
                      }),
                );
              } else if (state.isFetching == false &&
                  state.filteredCountryList.isEmpty &&
                  searchController.text.isNotEmpty) {
                return Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: double.infinity,
                        child: const Text(
                          'Unable to find any country!',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.red,
                              fontWeight: FontWeight.w700),
                        )));
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
