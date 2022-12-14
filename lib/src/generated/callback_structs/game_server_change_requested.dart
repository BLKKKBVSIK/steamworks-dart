// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";

@Packed(4)
class GameServerChangeRequested extends Struct {
  static int get callbackId => 332;

  external Pointer<Utf8> server;

  external Pointer<Utf8> password;
}

extension GameServerChangeRequestedExtensions
    on Pointer<GameServerChangeRequested> {
  Pointer<Utf8> get server => ref.server;

  Pointer<Utf8> get password => ref.password;
}
