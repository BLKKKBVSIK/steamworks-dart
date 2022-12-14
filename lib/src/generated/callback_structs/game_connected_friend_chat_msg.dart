// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class GameConnectedFriendChatMsg extends Struct {
  static int get callbackId => 343;

  @UnsignedLongLong()
  external CSteamId steamIdUser;

  @Int()
  external int messageId;
}

extension GameConnectedFriendChatMsgExtensions
    on Pointer<GameConnectedFriendChatMsg> {
  CSteamId get steamIdUser => ref.steamIdUser;

  int get messageId => ref.messageId;
}
