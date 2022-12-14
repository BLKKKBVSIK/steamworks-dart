// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../enums/eresult.dart";
import "../typedefs.dart";

@Packed(4)
class GetUserItemVoteResult extends Struct {
  static int get callbackId => 3409;

  @UnsignedLongLong()
  external PublishedFileId publishedFileId;

  @Int32()
  external EResultAliasDart result;

  @Bool()
  external bool votedUp;

  @Bool()
  external bool votedDown;

  @Bool()
  external bool voteSkipped;
}

extension GetUserItemVoteResultExtensions on Pointer<GetUserItemVoteResult> {
  PublishedFileId get publishedFileId => ref.publishedFileId;

  EResult get result => EResult.fromValue(ref.result);

  bool get votedUp => ref.votedUp;

  bool get votedDown => ref.votedDown;

  bool get voteSkipped => ref.voteSkipped;
}
