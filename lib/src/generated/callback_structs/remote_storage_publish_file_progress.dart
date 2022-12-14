// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";

@Packed(4)
class RemoteStoragePublishFileProgress extends Struct {
  static int get callbackId => 1329;

  @Double()
  external double dPercentFile;

  @Bool()
  external bool preview;
}

extension RemoteStoragePublishFileProgressExtensions
    on Pointer<RemoteStoragePublishFileProgress> {
  double get dPercentFile => ref.dPercentFile;

  bool get preview => ref.preview;
}
