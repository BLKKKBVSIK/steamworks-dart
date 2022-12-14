// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class GameConnectedClanChatMsg extends Struct {
  static int get callbackId => 338;

  @UnsignedLongLong()
  external CSteamId steamIdClanChat;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int messageId;
}

extension GameConnectedClanChatMsgExtensions
    on Pointer<GameConnectedClanChatMsg> {
  CSteamId get steamIdClanChat => ref.steamIdClanChat;

  CSteamId get steamIdUser => ref.steamIdUser;

  int get messageId => ref.messageId;
}
