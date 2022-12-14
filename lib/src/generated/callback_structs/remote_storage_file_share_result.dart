// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageFileShareResult extends Struct {
  static int get callbackId => 1307;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external UgcHandle file;

  external Pointer<Utf8> filename;
}

extension RemoteStorageFileShareResultExtensions
    on Pointer<RemoteStorageFileShareResult> {
  EResult get result => EResult.fromValue(ref.result);

  UgcHandle get file => ref.file;

  Pointer<Utf8> get filename => ref.filename;
}
