// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class SteamItemDetails extends Struct {
  @UnsignedLongLong()
  external SteamItemInstanceId itemId;

  @Int()
  external SteamItemDef definition;

  @UnsignedShort()
  external int quantity;

  @UnsignedShort()
  external int flags;
}

extension SteamItemDetailsExtensions on Pointer<SteamItemDetails> {
  SteamItemInstanceId get itemId => ref.itemId;

  SteamItemDef get definition => ref.definition;

  int get quantity => ref.quantity;

  int get flags => ref.flags;
}
