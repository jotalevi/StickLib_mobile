class Sessions {
  static bool darkMode = false;
  static bool MOKC_hasAcc = false;
  static void load() {}
  static bool hasAccount() {
    return MOKC_hasAcc;
  }

  static void MOCK_load(bool _hasAcc) {
    Sessions.MOKC_hasAcc = _hasAcc;
  }
}
