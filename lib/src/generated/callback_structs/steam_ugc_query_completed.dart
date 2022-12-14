// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class SteamUgcQueryCompleted extends Struct {
  static int get callbackId => 3401;

  @UnsignedLongLong()
  external UgcQueryHandle handle;

  @Int32()
  external EResultAliasDart result;

  @UnsignedInt()
  external int numResultsReturned;

  @UnsignedInt()
  external int totalMatchingResults;

  @Bool()
  external bool cachedData;

  external Pointer<Utf8> nextCursor;
}

extension SteamUgcQueryCompletedExtensions on Pointer<SteamUgcQueryCompleted> {
  UgcQueryHandle get handle => ref.handle;

  EResult get result => EResult.fromValue(ref.result);

  int get numResultsReturned => ref.numResultsReturned;

  int get totalMatchingResults => ref.totalMatchingResults;

  bool get cachedData => ref.cachedData;

  Pointer<Utf8> get nextCursor => ref.nextCursor;
}
