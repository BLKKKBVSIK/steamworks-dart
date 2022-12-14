// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class AvatarImageLoaded extends Struct {
  static int get callbackId => 334;

  @UnsignedLongLong()
  external CSteamId steamId;

  @Int()
  external int image;

  @Int()
  external int wide;

  @Int()
  external int tall;
}

extension AvatarImageLoadedExtensions on Pointer<AvatarImageLoaded> {
  CSteamId get steamId => ref.steamId;

  int get image => ref.image;

  int get wide => ref.wide;

  int get tall => ref.tall;
}
