// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class P2pSessionConnectFail extends Struct {
  static int get callbackId => 1203;

  @UnsignedLongLong()
  external CSteamId steamIdRemote;

  @UnsignedChar()
  external int p2pSessionError;
}

extension P2pSessionConnectFailExtensions on Pointer<P2pSessionConnectFail> {
  CSteamId get steamIdRemote => ref.steamIdRemote;

  int get p2pSessionError => ref.p2pSessionError;
}
