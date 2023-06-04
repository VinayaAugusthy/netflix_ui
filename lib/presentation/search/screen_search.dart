import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/http/search/search_function.dart';
import 'package:netflix/http/search/top_search.dart';
import 'package:netflix/model/search/top_search_model.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';
import '../../core/constants.dart';
import '../../model/search/search_model.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
List<SearchResults> searchArray = [];
List<TopSearch> topSearchArray = [];
 bool isValue = true;
 final searchController = TextEditingController();
 @override
  void initState() {
    // TODO: implement initState
    topSearches();
    getSearchedValues();
    super.initState();
    searchController.addListener(searchValue);
  }
  getSearchedValues() async{
    searchArray = await CallSearch.getSearch(searchController.text.trim());
    setState(() {
     
    });
  }

    topSearches() async{
    topSearchArray = await CallTopSearch.getTopSearch();
    setState(() {
      
    });
  }

  void searchValue(){
    getSearchedValues();
    setState(() {
      isValue = searchController.text.isEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                controller: searchController,
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon:   const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(
                  color: Colors.white
                ),
              ),
              height,
             
               Expanded(
                child: isValue ?
                 SearchIdleWidget(passList: topSearchArray)
              : ViewSearchedMatches(passList: searchArray),
               )
            ],
          ),
        ) ,
      ),
    );
  }
}