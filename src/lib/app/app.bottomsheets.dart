// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

import 'package:halo/app/app.locator.dart';
import 'package:halo/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stacked_services/stacked_services.dart';

enum BottomSheetType {
  notice,
}

void setupBottomSheetUi() {
  final bottomsheetService = locator<BottomSheetService>();

  final builders = <BottomSheetType, SheetBuilder>{
    BottomSheetType.notice: (context, request, completer) =>
        NoticeSheet(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
