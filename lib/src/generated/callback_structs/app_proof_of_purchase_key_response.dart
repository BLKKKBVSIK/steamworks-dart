// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/eresult.dart";

@Packed(4)
class AppProofOfPurchaseKeyResponse extends Struct {
  static int get callbackId => 1021;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external int appId;

  @UnsignedInt()
  external int keyLength;

  external Pointer<Utf8> key;
}

extension AppProofOfPurchaseKeyResponseExtensions
    on Pointer<AppProofOfPurchaseKeyResponse> {
  EResult get result => EResult.fromValue(ref.result);

  int get appId => ref.appId;

  int get keyLength => ref.keyLength;

  Pointer<Utf8> get key => ref.key;
}
