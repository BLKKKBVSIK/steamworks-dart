// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "../enums/eresult.dart";

@Packed(4)
class FavoritesListAccountsUpdated extends Struct {
  static int get callbackId => 516;

  @Int32()
  external EResultAliasDart result;
}

extension FavoritesListAccountsUpdatedExtensions
    on Pointer<FavoritesListAccountsUpdated> {
  EResult get result => EResult.fromValue(ref.result);
}
