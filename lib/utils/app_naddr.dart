import 'package:ndk/ndk.dart';
import 'package:nostr_app_finder/repository.dart';

Future<String?> appNaddr(Nip01Event event) async {
  final dTag = event.getDtag();
  if (dTag == null) return null;

  final relays = await Repository.ndk.config.cache.loadEventSources(event.id);

  return Nip19.encodeNaddr(
    identifier: dTag,
    pubkey: event.pubKey,
    kind: event.kind,
    relays: relays,
  );
}
