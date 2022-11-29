// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../enums/eresult.dart";
import "../structs/steam_networking_identity.dart";

@Packed(4)
class SteamNetworkingFakeIpResult extends Struct {
  static int get callbackId => 1223;

  static int get maxReturnPorts => 8;
  @Int32()
  external EResultAliasDart result;

  external SteamNetworkingIdentity identity;

  @UnsignedInt()
  external int ip;

  @Array<UnsignedShort>(8)
  external Array<UnsignedShort> ports;
}

extension SteamNetworkingFakeIpResultExtensions
    on Pointer<SteamNetworkingFakeIpResult> {
  EResult get result => EResult.fromValue(ref.result);

  SteamNetworkingIdentity get identity => ref.identity;

  int get ip => ref.ip;

  Array<UnsignedShort> get ports => ref.ports;
}
