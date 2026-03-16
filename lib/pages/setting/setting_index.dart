import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  // 以下为本地 UI 状态，仅用于演示开关效果，不做任何持久化
  bool _darkMode = false;
  bool _systemfont = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('设置')),
      body: ListView(
        children: [
          const _SettingGroupHeader(title: '通用'),
          _SettingGroupCard(
            children: [
              SwitchListTile(
                secondary: const Icon(Icons.dark_mode_outlined),
                title: const Text('深色模式'),
                subtitle: const Text('跟随系统或手动切换'),
                value: _darkMode,
                onChanged: (value) {
                  setState(() {
                    _darkMode = value;
                  });
                },
              ),
              SwitchListTile(
                secondary: const Icon(Icons.font_download),
                title: const Text('字体'),
                value: _systemfont,
                onChanged: (value) {
                  setState(() {
                    _systemfont = value;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.cleaning_services_outlined),
                title: const Text('清除缓存'),
                subtitle: const Text('释放本地存储空间'),
                onTap: () {},
              ),
            ],
          ),

          const _SettingGroupHeader(title: '隐私与安全'),
          _SettingGroupCard(
            children: [
              ListTile(
                leading: const Icon(Icons.visibility_off_outlined),
                title: const Text('数据与隐私'),
                subtitle: const Text('查看隐私政策和数据说明'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ],
          ),

          const _SettingGroupHeader(title: 'About'),
          _SettingGroupCard(
            children: [
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('关于应用'),
                subtitle: const Text('版本信息、开源协议...'),
                onTap: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 208, 208, 208),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: const Text('退出'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingGroupCard extends StatelessWidget {
  final List<Widget> children;
  final double radius;

  const _SettingGroupCard({required this.children, this.radius = 13});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.surface;
    final border = Theme.of(context).dividerColor.withValues(alpha: 0.08);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: border),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: _withDividers(context, children),
          ),
        ),
      ),
    );
  }

  List<Widget> _withDividers(BuildContext context, List<Widget> items) {
    final divider = Divider(
      height: 1,
      thickness: 1,
      color: Theme.of(context).dividerColor.withValues(alpha: 0.12),
    );

    final result = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      result.add(items[i]);
      if (i != items.length - 1) {
        result.add(divider);
      }
    }
    return result;
  }
}

/// 分组标题组件：左侧短竖线 + 分组文字
class _SettingGroupHeader extends StatelessWidget {
  final String title;

  const _SettingGroupHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Row(
        children: [
          Container(
            width: 3,
            height: 16,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(999),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
