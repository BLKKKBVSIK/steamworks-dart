// ignore_for_file: public_member_api_docs
import "dart:ffi";
import "../dl.dart";
import "../typedefs.dart";
import "../enums/ematch_making_server_response.dart";

class ISteamMatchmakingServerListResponse extends Opaque {}

final _serverResponded = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServerListResponse>,
  Pointer<Void>,
  Int,
),
    void Function(
  Pointer<ISteamMatchmakingServerListResponse>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServerListResponse_ServerResponded");

final _serverFailedToRespond = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServerListResponse>,
  Pointer<Void>,
  Int,
),
    void Function(
  Pointer<ISteamMatchmakingServerListResponse>,
  HServerListRequest,
  int,
)>("SteamAPI_ISteamMatchmakingServerListResponse_ServerFailedToRespond");

final _refreshComplete = dl.lookupFunction<
    Void Function(
  Pointer<ISteamMatchmakingServerListResponse>,
  Pointer<Void>,
  EMatchMakingServerResponseAliasC,
),
    void Function(
  Pointer<ISteamMatchmakingServerListResponse>,
  HServerListRequest,
  EMatchMakingServerResponseAliasDart,
)>("SteamAPI_ISteamMatchmakingServerListResponse_RefreshComplete");

extension ISteamMatchmakingServerListResponseExtensions
    on Pointer<ISteamMatchmakingServerListResponse> {
  void serverResponded(
    HServerListRequest hRequest,
    int iServer,
  ) =>
      _serverResponded.call(
        this,
        hRequest,
        iServer,
      );

  void serverFailedToRespond(
    HServerListRequest hRequest,
    int iServer,
  ) =>
      _serverFailedToRespond.call(
        this,
        hRequest,
        iServer,
      );

  void refreshComplete(
    HServerListRequest hRequest,
    EMatchMakingServerResponse response,
  ) =>
      _refreshComplete.call(
        this,
        hRequest,
        response.value,
      );
}
