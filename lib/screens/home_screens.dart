
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ChannelsBloc(
          child: ChannelListView(
            filter: Filter.in_('members', [StreamChat.of(context).currentUser!.id]),
            sort: const [SortOption('last_message_at')],
            limit: 20,
          ),
        ),
      ),
    );
  }
}
