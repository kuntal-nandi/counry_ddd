class CountryGqlQuery {
  String countryQuery() {
    return """
  query Query {
  countries {
    code
    currency
    emoji
    emojiU
    languages {
      code
      name
      native
      rtl
    }
    name
    native
    phone
  }
}
""";
  }
}
