// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../enums/eresult.dart";
import "../enums/eplayer_accept_state.dart";
import "../typedefs.dart";

@Packed(4)
class RequestPlayersForGameResultCallback extends Struct {
  static int get callbackId => 5212;

  @Int32()
  external EResultAliasDart result;

  @UnsignedLongLong()
  external int searchId;

  @UnsignedLongLong()
  external CSteamId steamIdPlayerFound;

  @UnsignedLongLong()
  external CSteamId steamIdLobby;

  @Int32()
  external PlayerAcceptStateAliasDart playerAcceptState;

  @Int()
  external int playerIndex;

  @Int()
  external int totalPlayersFound;

  @Int()
  external int totalPlayersAcceptedGame;

  @Int()
  external int suggestedTeamIndex;

  @UnsignedLongLong()
  external int uniqueGameId;
}

extension RequestPlayersForGameResultCallbackExtensions
    on Pointer<RequestPlayersForGameResultCallback> {
  EResult get result => EResult.fromValue(ref.result);

  int get searchId => ref.searchId;

  CSteamId get steamIdPlayerFound => ref.steamIdPlayerFound;

  CSteamId get steamIdLobby => ref.steamIdLobby;

  PlayerAcceptState get playerAcceptState =>
      PlayerAcceptState.fromValue(ref.playerAcceptState);

  int get playerIndex => ref.playerIndex;

  int get totalPlayersFound => ref.totalPlayersFound;

  int get totalPlayersAcceptedGame => ref.totalPlayersAcceptedGame;

  int get suggestedTeamIndex => ref.suggestedTeamIndex;

  int get uniqueGameId => ref.uniqueGameId;
}
