// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class SteamParamStringArray extends Struct {
  external Pointer<Pointer<Utf8>> strings;

  @Int()
  external int numStrings;
}

extension SteamParamStringArrayExtensions on Pointer<SteamParamStringArray> {
  Pointer<Pointer<Utf8>> get strings => ref.strings;

  int get numStrings => ref.numStrings;
}
