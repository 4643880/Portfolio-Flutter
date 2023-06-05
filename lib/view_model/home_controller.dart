import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/utils/utils.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 3.obs;

  // =====================================================
  // Fetching Logo and Menu Items from Firebase
  // =====================================================
  Future<QuerySnapshot<Map<String, dynamic>>?> getTopBar() async {
    bool internetAvailable = await internetAvailabilityCheck(false);
    if (internetAvailable) {
      try {
        Utils.showLoading("Loading...");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("top-bar").get();
        Utils.dismiss();
        return snapshot;
      } catch (e) {
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
    return null;
  }

  // =====================================================
  // Fetching Header Items from Firebase
  // =====================================================
  Future<QuerySnapshot<Map<String, dynamic>>?> getHeader() async {
    bool internetAvailable = await internetAvailabilityCheck(false);
    if (internetAvailable) {
      try {
        Utils.showLoading("Loading...");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("header").get();

        Utils.dismiss();
        return snapshot;
      } catch (e) {
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
    return null;
  }

  // =====================================================
  // Fetching Description from Firebase
  // =====================================================
  Future<QuerySnapshot<Map<String, dynamic>>?> getDescription() async {
    bool internetAvailable = await internetAvailabilityCheck(false);
    if (internetAvailable) {
      try {
        Utils.showLoading("Loading...");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("description").get();

        Utils.dismiss();
        return snapshot;
      } catch (e) {
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
    return null;
  }

  // =====================================================
  // Fetching About Me Information from Firebase
  // =====================================================
  Future<QuerySnapshot<Map<String, dynamic>>?> getAboutMe() async {
    bool internetAvailable = await internetAvailabilityCheck(false);
    if (internetAvailable) {
      try {
        Utils.showLoading("Loading...");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("aboutMe").get();

        Utils.dismiss();
        return snapshot;
      } catch (e) {
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
    return null;
  }

  // =====================================================
  // Fetching Contact Information from Firebase
  // =====================================================
  Future<QuerySnapshot<Map<String, dynamic>>?> getContactInfo() async {
    bool internetAvailable = await internetAvailabilityCheck(false);
    if (internetAvailable) {
      try {
        Utils.showLoading("Loading...");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("contact").get();

        Utils.dismiss();
        return snapshot;
      } catch (e) {
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
    return null;
  }

  // =====================================================
  // Fetching Contact Information from Firebase
  // =====================================================
  Future<QuerySnapshot<Map<String, dynamic>>?> getFooter() async {
    bool internetAvailable = await internetAvailabilityCheck(false);
    if (internetAvailable) {
      try {
        Utils.showLoading("Loading...");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("footer").get();

        Utils.dismiss();
        return snapshot;
      } catch (e) {
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
    return null;
  }

  // Checking Internet Connection
  Future<bool> internetAvailabilityCheck(bool fromInternetCheckScreen) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.ethernet ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      Utils.showErrorSnackBar("internet_not_available".tr);
      if (fromInternetCheckScreen == false) {
        // Get.offAllNamed(routeInternetNotAvailable);
      }
      return false;
    }
  }
}
