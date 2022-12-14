// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class TimedTrialStatus extends Struct {
  static int get callbackId => 1030;

  @UnsignedInt()
  external AppId appId;

  @Bool()
  external bool isOffline;

  @UnsignedInt()
  external int secondsAllowed;

  @UnsignedInt()
  external int secondsPlayed;
}

extension TimedTrialStatusExtensions on Pointer<TimedTrialStatus> {
  AppId get appId => ref.appId;

  bool get isOffline => ref.isOffline;

  int get secondsAllowed => ref.secondsAllowed;

  int get secondsPlayed => ref.secondsPlayed;
}
