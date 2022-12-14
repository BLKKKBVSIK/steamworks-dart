// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class GameRichPresenceJoinRequested extends Struct {
  static int get callbackId => 337;

  @UnsignedLongLong()
  external CSteamId steamIdFriend;

  external Pointer<Utf8> connect;
}

extension GameRichPresenceJoinRequestedExtensions
    on Pointer<GameRichPresenceJoinRequested> {
  CSteamId get steamIdFriend => ref.steamIdFriend;

  Pointer<Utf8> get connect => ref.connect;
}
