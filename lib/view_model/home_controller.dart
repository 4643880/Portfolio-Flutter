import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/utils/utils.dart';
import 'dart:developer' as devtools show log;

class HomeController extends GetxController {
  RxInt currentIndex = 3.obs;

  @override
  void onInit() {
    accessDataOffline_configure();
    super.onInit();
  }

  void accessDataOffline_configure() async {
    // [START access_data_offline_configure_offline_persistence]
    // Apple and Android
    FirebaseFirestore.instance.settings = const Settings(
      persistenceEnabled: true,
      cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED,
    );
  }

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
        devtools.log(e.toString());
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    } else {
      try {
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("top-bar").get();
        return snapshot;
      } catch (e) {
        devtools.log(e.toString());
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
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
        devtools.log(e.toString());
        return null;
      }
    } else {
      try {
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("header").get();
        return snapshot;
      } catch (e) {
        devtools.log(e.toString());
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
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
        devtools.log(e.toString());
        return null;
      }
    } else {
      try {
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("description").get();
        return snapshot;
      } catch (e) {
        devtools.log(e.toString());
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
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
        devtools.log(e.toString());
        return null;
      }
    } else {
      try {
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("aboutMe").get();
        return snapshot;
      } catch (e) {
        devtools.log(e.toString());
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
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
        devtools.log(e.toString());
        return null;
      }
    } else {
      try {
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("contact").get();
        return snapshot;
      } catch (e) {
        devtools.log(e.toString());
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
  }

  // =====================================================
  // Fetching Contact Information from Firebase
  // =====================================================
  Future<QuerySnapshot<Map<String, dynamic>>?> getFooter() async {
    bool internetAvailable = await internetAvailabilityCheck(false);
    if (internetAvailable) {
      try {
        devtools.log("Reached 1");
        Utils.showLoading("Loading...");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("footer").get();

        Utils.dismiss();
        return snapshot;
      } catch (e) {
        devtools.log(e.toString());
        return null;
      }
    } else {
      try {
        devtools.log("Reached 2");
        QuerySnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance.collection("footer").get();
        return snapshot;
      } catch (e) {
        devtools.log(e.toString());
        Utils.showErrorSnackBar("internet_not_available".tr);
        return null;
      }
    }
  }

  // Checking Internet Connection
  Future<bool> internetAvailabilityCheck(bool fromInternetCheckScreen) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.ethernet ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      // Utils.showErrorSnackBar("internet_not_available".tr);
      if (fromInternetCheckScreen == false) {
        // Get.offAllNamed(routeInternetNotAvailable);
      }
      return false;
    }
  }
}
