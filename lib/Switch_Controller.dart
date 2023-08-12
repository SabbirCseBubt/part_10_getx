import 'package:get/get.dart';

class SwitchController extends GetxController
{
  RxBool  val =false.obs;

  switchChanger( bool change)
  {


    val.value=change;




  }




}