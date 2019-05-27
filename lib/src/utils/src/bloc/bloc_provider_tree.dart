import 'package:flutter/widgets.dart';
import 'bloc_provider.dart';

class BlocProviderTree extends StatelessWidget {
  final List<BlocProvider> blocProviders;
  final Widget child;

  BlocProviderTree({@required this.blocProviders, @required this.child});

  @override
  Widget build(BuildContext context) {
    Widget tree = child;
    for (final blocProvider in blocProviders.reversed) {
      tree = blocProvider.toTree(tree);
    }

    return tree;
  }
}
