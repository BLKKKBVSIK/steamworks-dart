// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class EquippedProfileItemsChanged extends Struct {
  static int get callbackId => 350;

  @UnsignedLongLong()
  external CSteamId steamId;
}

extension EquippedProfileItemsChangedExtensions
    on Pointer<EquippedProfileItemsChanged> {
  CSteamId get steamId => ref.steamId;
}
