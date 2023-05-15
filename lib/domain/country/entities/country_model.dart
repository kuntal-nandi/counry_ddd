import 'package:country/domain/country/entities/languages_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'country_model.freezed.dart';

@freezed
class Country with _$Country {
  const Country._();
  factory Country({
    required String name,
    required String code,
    required String currency,
    required String emoji,
    required String emojiU,
    @Default([]) List<Languages> languages,
    required String native,
    required String phone,
  }) = _Country;
  factory Country.empty() =>
      Country(
        code: '',
        currency: '',
        emoji: '',
        emojiU: '',
        name: '',
        native: '',
        phone: '',
        languages: [Languages.empty()]
      );
}

