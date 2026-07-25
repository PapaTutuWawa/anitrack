import 'package:anitrack/src/service/anilist/model.dart';
import 'package:graphql/client.dart';

class AniListClient {
  /// The base GraphQL client for AniList
  final _client = GraphQLClient(
    link: HttpLink("https://graphql.anilist.co"),
    cache: GraphQLCache(),
  );

  Future<List<AnimeSearchResult>> searchAnime(String q) async {
    const query = r'''
      query ($search: String!) {
        Page {
          media(search: $search, type: ANIME) {
            id
            status
            coverImage {
              medium
            }
            episodes
            description
            nextAiringEpisode {
              airingAt
            }
            title {
              romaji
              english
              native
            }
          }
        }
      }
    ''';
    final result = await _client.query(
      QueryOptions(
        document: gql(query),
        variables: {
          'search': q,
        },
      ),
    );
    if (result.hasException) {
      // TODO: Handle this more elegantly
      print(result.exception.toString());
      return [];
    }

    return (result.data!["Page"]["media"] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .map(AnimeSearchResult.fromJson)
        .toList();
  }

  Future<List<MangaSearchResult>> searchManga(String q) async {
    const query = r'''
      query ($search: String!) {
        Page {
          media(search: $search, type: MANGA) {
            id
            status
            coverImage {
              medium
            }
            chapters
            description
            title {
              romaji
              english
              native
            }
          }
        }
      }
    ''';
    final result = await _client.query(
      QueryOptions(
        document: gql(query),
        variables: {
          'search': q,
        },
      ),
    );
    if (result.hasException) {
      // TODO: Handle this more elegantly
      print(result.exception.toString());
      return [];
    }

    return (result.data!["Page"]["media"] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .map(MangaSearchResult.fromJson)
        .toList();
  }

  Future<Anime> getAnimeById(String id) async {
    const query = r'''
      query ($id: Int) {
        Media (id: $id) {
          id
          status
          nextAiringEpisode {
            airingAt
          }
          title {
            romaji
            english
            native
          }
        }
      }
    ''';
    final result = await _client.query(
      QueryOptions(
        document: gql(query),
        variables: {
          'id': id,
        },
      ),
    );
    if (result.hasException) {
      print(result.exception.toString());
    }

    return Anime.fromJson(result.data!['Media'] as Map<String, dynamic>);
  }

  /*
  Future<dynamic> getMangaById(String id) {

  }*/
}
