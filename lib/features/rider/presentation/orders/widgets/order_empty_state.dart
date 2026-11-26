import 'package:flutter/material.dart';

import '../../../../../core/design/design.dart';

/// A centred icon, a headline and a line of copy, with an optional action.
///
/// The board has five of these and they are the screen most of the time — an
/// idle rider stares at an empty list far longer than a full one — so it is
/// worth them saying which of the five situations the rider is in rather than
/// all reading "nothing here".
class OrderEmptyState extends StatelessWidget {
  const OrderEmptyState({
    super.key,
    required this.icon,
    required this.title,
    this.body,
    this.action,
  });

  final IconData icon;
  final String title;
  final String? body;
  final Widget? action;

  // A badge of soft rings rather than one flat disc: an idle rider looks at
  // this screen more than any other, and it should feel like a place to wait
  // rather than a hole where content failed to arrive.
  @override
  Widget build(BuildContext context) => NxEmptyState(
        icon: icon,
        title: title,
        body: body,
        action: action,
      );
}

/// fetched does not stop being true because the next poll missed.
class OrderBanner extends StatelessWidget {
  const OrderBanner({
    super.key,
    required this.message,
    this.icon = Icons.error_outline_rounded,
    this.action,
  });

  final String message;
  final IconData icon;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final NxTokens t = context.nx;
    final Color base = t.actionText;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: t.actionSoft,
        borderRadius: NxRadius.controlAll,
        border: Border.all(color: t.action.withValues(alpha: 0.4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icon, size: 20, color: base),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  message,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          if (action != null) ...<Widget>[
            const SizedBox(height: 10),
            Align(alignment: AlignmentDirectional.centerEnd, child: action!),
          ],
        ],
      ),
    );
  }
}
