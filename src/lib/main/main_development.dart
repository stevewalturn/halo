import 'package:halo/main/bootstrap.dart';
import 'package:halo/models/enums/flavor.dart';
import 'package:halo/ui/views/app/app_view.dart';

void main() {
  bootstrap(
    builder: () => const AppView(),
    flavor: Flavor.development,
  );
}
