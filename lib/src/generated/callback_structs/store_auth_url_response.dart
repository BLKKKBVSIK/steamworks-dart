// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class StoreAuthUrlResponse extends Struct {
  static int get callbackId => 165;

  external Pointer<Utf8> url;
}

extension StoreAuthUrlResponseExtensions on Pointer<StoreAuthUrlResponse> {
  Pointer<Utf8> get url => ref.url;
}
