// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class LeaderboardScoresDownloaded extends Struct {
  static int get callbackId => 1105;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @UnsignedLongLong()
  external SteamLeaderboardEntries steamLeaderboardEntries;

  @Int()
  external int entryCount;
}

extension LeaderboardScoresDownloadedExtensions
    on Pointer<LeaderboardScoresDownloaded> {
  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;

  SteamLeaderboardEntries get steamLeaderboardEntries =>
      ref.steamLeaderboardEntries;

  int get entryCount => ref.entryCount;
}
