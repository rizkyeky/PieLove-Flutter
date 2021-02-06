import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../bloc/bloc.dart';

part 'home.dart';
part 'entry.dart';

// class Page<T extends Bloc> extends StatefulWidget {

//   Page({
//     Key key,
//     this.name = 'Page',
//     this.hasNetworkSnack = false
//   }) : super(key: key);

//   final String name;
//   final T bloc = injector.getBloc<T>();
//   final bool hasNetworkSnack;

//   @override
//   _PageState createState() => _PageState();

//   @protected
//   Widget build(BuildContext context) {
//     return Container();
//   }

//   void init() {}
//   void dispose() {}
// }

// class _PageState extends State<Page> with WidgetsBindingObserver {
 
//   @override
//   void initState() {
//     widget.init();
//     widget.bloc.init();
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     debugPrint('init ${widget.name}');
//   }

//   @override
//   void dispose() {
//     widget.dispose();
//     widget.bloc.dispose();
//     super.dispose();
//     WidgetsBinding.instance.removeObserver(this);
//     debugPrint('dispose ${widget.name}');
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     super.didChangeAppLifecycleState(state);
//     debugPrint('changeLifeCycle $state');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.build(context);
//   }
// }