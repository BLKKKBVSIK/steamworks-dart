// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class ItemInstalled extends Struct {
  static int get callbackId => 3405;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;
}

extension ItemInstalledExtensions on Pointer<ItemInstalled> {
  AppId get appId => ref.appId;

  PublishedFileId get publishedFileId => ref.publishedFileId;
}
