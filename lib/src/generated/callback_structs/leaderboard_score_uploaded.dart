// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../typedefs.dart";

@Packed(4)
class LeaderboardScoreUploaded extends Struct {
  static int get callbackId => 1106;

  @UnsignedChar()
  external int success;

  @UnsignedLongLong()
  external SteamLeaderboard steamLeaderboard;

  @Int()
  external int score;

  @UnsignedChar()
  external int scoreChanged;

  @Int()
  external int globalRankNew;

  @Int()
  external int globalRankPrevious;
}

extension LeaderboardScoreUploadedExtensions
    on Pointer<LeaderboardScoreUploaded> {
  int get success => ref.success;

  SteamLeaderboard get steamLeaderboard => ref.steamLeaderboard;

  int get score => ref.score;

  int get scoreChanged => ref.scoreChanged;

  int get globalRankNew => ref.globalRankNew;

  int get globalRankPrevious => ref.globalRankPrevious;
}
