// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class RemoteStorageDownloadUgcResult extends Struct {
  static int get callbackId => 1317;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external UgcHandle file;

  @UnsignedInt()
  external AppId appId;

  @Int()
  external int sizeInBytes;

  external Pointer<Utf8> fileName;

  @UnsignedLongLong()
  external int steamIdOwner;
}

extension RemoteStorageDownloadUgcResultExtensions
    on Pointer<RemoteStorageDownloadUgcResult> {
  EResult get result => EResult.fromValue(ref.result);

  UgcHandle get file => ref.file;

  AppId get appId => ref.appId;

  int get sizeInBytes => ref.sizeInBytes;

  Pointer<Utf8> get fileName => ref.fileName;

  int get steamIdOwner => ref.steamIdOwner;
}
