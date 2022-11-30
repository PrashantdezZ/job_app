import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../desgin_elements/design.dart';

class advancedSearch extends StatelessWidget {
   advancedSearch({
    Key? key,
    required this.size,
    required this.formKey,
    required TextEditingController jobController,
    required TextEditingController cityController,
    required TextEditingController jobTypeController,
  }) : _jobController = jobController, _cityController = cityController, _jobTypeController = jobTypeController, super(key: key);

  final Size size;
  final GlobalKey<FormState> formKey;
  final TextEditingController _jobController;
  final TextEditingController _cityController;
  final TextEditingController _jobTypeController;
  var job_option = [
    'part-time',
    'full-time','contract','internship'
  ];
  var job_location = [
    'kathmandu',
    'Biratnagar','Dharan','Itahari','remote'
  ];
  var default_location = 'kathmandu';
  var job_loc = "kathmandu";
  var currentItemSelected = "full-time";
  var type_of_job = "full-time";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 47,left: 18),
      height: size.height*0.32,
      width: size.width*1,
      
      decoration: BoxDecoration(
          color: Palette.searchColor,
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(28),
                bottomRight: Radius.circular(28),
                ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Padding(
            padding: const EdgeInsets.only(right: 8,left: 8,bottom: 12),
            child: Text('Find your Job',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Colors.white,
            ),
            ),
          ),
          SizedBox(height: 12,),

          Form(
              key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _jobController,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                  decoration: InputDecoration(
                          filled: true,
                          fillColor: Palette.fillColor,
                          
                          hintText: 'Enter job title',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.7)
                          ),
                          enabled: true,
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                        ),
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                  
              Expanded(
                  child: DropdownButtonFormField2<String>(
                           decoration: InputDecoration(
                          filled: true,
                          fillColor: Palette.fillColor,
                          enabled: true,
                          contentPadding: const EdgeInsets.only(
                          left:0, bottom: 8.0, top: 8.0,right: 0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                        ),
                                    scrollbarAlwaysShow: true,
                                    buttonHeight: 30,
                                    itemHeight: kMinInteractiveDimensionCupertino,
                                    // dropdownColor: Colors.blue[900],
                                    // isDense: true,
                                    itemSplashColor:Palette.lightPurple.withOpacity(0.7),
                                    dropdownPadding: EdgeInsets.all(10),
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(17),
                                      color: Palette.searchColor
                                        
                                    ),
                                    isExpanded: true,
                                    iconEnabledColor: Colors.white,
                                    focusColor: Colors.black,
                                    items: job_option.map((String dropDownItem) {
                                      return DropdownMenuItem<String>(
                                        
                                        value: dropDownItem,
                                        child: Text(
                                          dropDownItem,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (newValueSelect) {
                                      
                                        currentItemSelected = newValueSelect!;
                                        type_of_job = newValueSelect;
                                     
                                    },
                                    value: currentItemSelected,
                                  ),
                ),
                SizedBox(width: 7,),
                Expanded(
                  child: DropdownButtonFormField2<String>(
                           decoration: InputDecoration(
                          filled: true,
                          fillColor: Palette.fillColor,
                          enabled: true,
                          contentPadding: const EdgeInsets.only(
                          left:0, bottom: 8.0, top: 8.0,right: 0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                        ),
                                    scrollbarAlwaysShow: true,
                                    buttonHeight: 30,
                                    itemHeight: kMinInteractiveDimensionCupertino,
                                    // dropdownColor: Colors.blue[900],
                                    // isDense: true,
                                    itemSplashColor:Palette.lightPurple.withOpacity(0.7),
                                    dropdownPadding: EdgeInsets.all(10),
                                    dropdownDecoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(17),
                                      color: Palette.searchColor
                                        
                                    ),
                                    isExpanded: true,
                                    iconEnabledColor: Colors.white,
                                    focusColor: Colors.black,
                                    items: job_location.map((String dropDownItem) {
                                      return DropdownMenuItem<String>(
                                        
                                        value: dropDownItem,
                                        child: Text(
                                          dropDownItem,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      
                                        default_location = value!;
                                        job_loc = value;
                                     
                                    },
                                    value: default_location,
                                  ),
                ),
                
                     SizedBox(width: 12,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(color:Color.fromARGB(224, 255, 255, 255),borderRadius: BorderRadius.circular(35)),
                  child: IconButton(onPressed: (){
                    formKey.currentState!.save();
                    print(formKey.currentState);
                  }, icon: Icon(Icons.arrow_right_alt_rounded)),
                )
                  ],
                ),
               
              ],
            ),
          )
        ],
        
      ),
    );
  }
}