// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class SteamInputConfigurationLoaded extends Struct {
  static int get callbackId => 2803;

  @UnsignedInt()
  external AppId appId;

  @UnsignedLongLong()
  external InputHandle deviceHandle;

  @UnsignedLongLong()
  external CSteamId mappingCreator;

  @UnsignedInt()
  external int majorRevision;

  @UnsignedInt()
  external int minorRevision;

  @Bool()
  external bool usesSteamInputApi;

  @Bool()
  external bool usesGamepadApi;
}

extension SteamInputConfigurationLoadedExtensions
    on Pointer<SteamInputConfigurationLoaded> {
  AppId get appId => ref.appId;

  InputHandle get deviceHandle => ref.deviceHandle;

  CSteamId get mappingCreator => ref.mappingCreator;

  int get majorRevision => ref.majorRevision;

  int get minorRevision => ref.minorRevision;

  bool get usesSteamInputApi => ref.usesSteamInputApi;

  bool get usesGamepadApi => ref.usesGamepadApi;
}
