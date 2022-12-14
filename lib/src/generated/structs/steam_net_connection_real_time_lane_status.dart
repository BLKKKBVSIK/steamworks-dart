// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class SteamNetConnectionRealTimeLaneStatus extends Struct {
  @Int()
  external int pendingUnreliableSize;

  @Int()
  external int pendingReliableSize;

  @Int()
  external int sentUnackedReliableSize;

  @Int()
  external int reservePad1;

  @LongLong()
  external SteamNetworkingMicroseconds queueTime;

  @Array<UnsignedInt>(10)
  external Array<UnsignedInt> reserved;
}

extension SteamNetConnectionRealTimeLaneStatusExtensions
    on Pointer<SteamNetConnectionRealTimeLaneStatus> {
  int get pendingUnreliableSize => ref.pendingUnreliableSize;

  int get pendingReliableSize => ref.pendingReliableSize;

  int get sentUnackedReliableSize => ref.sentUnackedReliableSize;

  int get reservePad1 => ref.reservePad1;

  SteamNetworkingMicroseconds get queueTime => ref.queueTime;

  Array<UnsignedInt> get reserved => ref.reserved;
}
