// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class GsClientAchievementStatus extends Struct {
  static int get callbackId => 206;

  @UnsignedLongLong()
  external int steamId;

  external Pointer<Utf8> achievement;

  @Bool()
  external bool unlocked;
}

extension GsClientAchievementStatusExtensions
    on Pointer<GsClientAchievementStatus> {
  int get steamId => ref.steamId;

  Pointer<Utf8> get achievement => ref.achievement;

  bool get unlocked => ref.unlocked;
}
