final datasource = [
  HomeItem(name: 'A', children: []),
  HomeItem(name: 'B', children: []),
  HomeItem(name: 'C', children: [
    ListItem(name: 'Container', desc: 'Container', path: '')
  ]),
  HomeItem(name: 'D', children: []),
  HomeItem(name: 'E', children: []),
  HomeItem(name: 'F', children: []),
  HomeItem(name: 'G', children: []),
  HomeItem(name: 'H', children: []),
  HomeItem(name: 'I', children: []),
  HomeItem(name: 'J', children: []),
  HomeItem(name: 'K', children: []),
  HomeItem(name: 'L', children: [
    ListItem(name: 'ListView', desc: '列表', path: '')
  ]),
  HomeItem(name: 'M', children: []),
  HomeItem(name: 'N', children: []),
  HomeItem(name: 'O', children: []),
  HomeItem(name: 'P', children: []),
  HomeItem(name: 'Q', children: []),
  HomeItem(name: 'R', children: []),
  HomeItem(name: 'S', children: []),
  HomeItem(name: 'T', children: []),
  HomeItem(name: 'U', children: []),
  HomeItem(name: 'V', children: []),
  HomeItem(name: 'W', children: []),
  HomeItem(name: 'X', children: []),
  HomeItem(name: 'Y', children: []),
  HomeItem(name: 'Z', children: [])
];


class HomeItem {
  String name;
  List<ListItem> children;
  bool isExpanded;
  HomeItem({required this.name, required this.children, this.isExpanded = false});
}

class ListItem {
  /// 名称
  String name;
  /// 描述
  String desc;
  /// 路由路径
  String path;
  ListItem({required this.name, required this.desc, required this.path});
}