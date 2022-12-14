// ignore_for_file: public_member_api_docs, packed_nesting_non_packed
import "dart:ffi";
import "package:ffi/ffi.dart";
import "../typedefs.dart";

@Packed(4)
class HtmlStatusText extends Struct {
  static int get callbackId => 4523;

  @UnsignedInt()
  external HHtmlBrowser browserHandle;

  external Pointer<Utf8> msg;
}

extension HtmlStatusTextExtensions on Pointer<HtmlStatusText> {
  HHtmlBrowser get browserHandle => ref.browserHandle;

  Pointer<Utf8> get msg => ref.msg;
}
