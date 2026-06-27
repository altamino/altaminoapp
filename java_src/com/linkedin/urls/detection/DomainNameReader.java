package com.linkedin.urls.detection;

/* loaded from: classes2.dex */
public class DomainNameReader {
    private static final int DNC_MIN_TOP_LEVEL_DOMAIN = 1;
    private static final String HEX_ENCODED_DOT = "2e";
    private static final int INTERNATIONAL_CHAR_START = 192;
    private static final int MAX_DOMAIN_LENGTH = 255;
    private static final int MAX_IP_PART = 255;
    private static final int MAX_LABEL_LENGTH = 64;
    private static final int MAX_NUMBER_LABELS = 127;
    private static final long MAX_NUMERIC_DOMAIN_VALUE = 4294967295L;
    private static final int MAX_TOP_LEVEL_DOMAIN = 22;
    private static final int MIN_IP_PART = 0;
    private static final long MIN_NUMERIC_DOMAIN_VALUE = 16843008;
    private static final int MIN_TOP_LEVEL_DOMAIN = 2;
    private UrlBuffer _buffer;
    private final CharacterHandler _characterHandler;
    private String _current;
    private UrlDetectorOptions _options;
    private final InputTextReader _reader;
    private int _schemeType;
    private int _dots = 0;
    private int _currentLabelLength = 0;
    private int _topLevelLength = 0;
    private int _startDomainName = 0;
    private boolean _numeric = false;
    private boolean _seenBracket = false;
    private boolean _seenCompleteBracketSet = false;
    private boolean _zoneIndex = false;

    interface CharacterHandler {
        void addCharacter(char c);
    }

    public enum ReaderNextState {
        InvalidDomainName,
        ValidDomainName,
        ReadFragment,
        ReadPath,
        ReadPort,
        ReadQueryString
    }

    public DomainNameReader(InputTextReader inputTextReader, UrlBuffer urlBuffer, String str, int i, UrlDetectorOptions urlDetectorOptions, CharacterHandler characterHandler) {
        this._buffer = urlBuffer;
        this._current = str;
        this._schemeType = i;
        this._reader = inputTextReader;
        this._options = urlDetectorOptions;
        this._characterHandler = characterHandler;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.linkedin.urls.detection.DomainNameReader.ReaderNextState readCurrent() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.urls.detection.DomainNameReader.readCurrent():com.linkedin.urls.detection.DomainNameReader$ReaderNextState");
    }

    public ReaderNextState readDomainName() {
        ReaderNextState current = readCurrent();
        ReaderNextState readerNextState = ReaderNextState.InvalidDomainName;
        if (current == readerNextState) {
            return readerNextState;
        }
        boolean z = false;
        while (!z && !this._reader.eof()) {
            char c = this._reader.read();
            if (c == '/') {
                return checkDomainNameValid(ReaderNextState.ReadPath, Character.valueOf(c));
            }
            if (c == ':' && (!this._seenBracket || this._seenCompleteBracketSet)) {
                return checkDomainNameValid(ReaderNextState.ReadPort, Character.valueOf(c));
            }
            if (c == '?') {
                return checkDomainNameValid(ReaderNextState.ReadQueryString, Character.valueOf(c));
            }
            if (c == '#') {
                return checkDomainNameValid(ReaderNextState.ReadFragment, Character.valueOf(c));
            }
            if (CharUtils.isDot(c) || (c == '%' && this._reader.canReadChars(2) && this._reader.peek(2).equalsIgnoreCase(HEX_ENCODED_DOT))) {
                if (this._currentLabelLength < 1) {
                    z = true;
                } else {
                    this._buffer.append(c);
                    if (!CharUtils.isDot(c)) {
                        this._buffer.append(this._reader.read());
                        this._buffer.append(this._reader.read());
                    }
                    if (!this._zoneIndex) {
                        this._dots++;
                        this._currentLabelLength = 0;
                    }
                    if (this._currentLabelLength >= 64) {
                        return ReaderNextState.InvalidDomainName;
                    }
                }
            } else if (this._seenBracket && ((CharUtils.isHex(c) || c == ':' || c == '[' || c == ']' || c == '%') && !this._seenCompleteBracketSet)) {
                if (c == '%') {
                    this._zoneIndex = true;
                } else if (c == ':') {
                    this._currentLabelLength = 0;
                } else {
                    if (c == '[') {
                        this._reader.goBack();
                        return ReaderNextState.InvalidDomainName;
                    }
                    if (c == ']') {
                        this._seenCompleteBracketSet = true;
                        this._zoneIndex = false;
                    } else {
                        this._currentLabelLength++;
                    }
                }
                this._numeric = false;
                this._buffer.append(c);
            } else if (CharUtils.isValidDomainChar(c)) {
                if (this._seenCompleteBracketSet) {
                    this._reader.goBack();
                    z = true;
                } else {
                    if (c != 'x' && c != 'X' && !CharUtils.isNumeric(c)) {
                        this._numeric = false;
                    }
                    this._buffer.append(c);
                    this._currentLabelLength++;
                    this._topLevelLength = this._currentLabelLength;
                }
            } else if (c == '[' && !this._seenBracket) {
                this._seenBracket = true;
                this._numeric = false;
                this._buffer.append(c);
            } else {
                if (c == '[' && this._seenCompleteBracketSet) {
                    this._reader.goBack();
                } else if (c == '%' && this._reader.canReadChars(2) && CharUtils.isHex(this._reader.peekChar(0)) && CharUtils.isHex(this._reader.peekChar(1))) {
                    this._buffer.append(c);
                    this._buffer.append(this._reader.read());
                    this._buffer.append(this._reader.read());
                    this._currentLabelLength += 3;
                    this._topLevelLength = this._currentLabelLength;
                } else {
                    this._characterHandler.addCharacter(c);
                }
                z = true;
            }
        }
        return checkDomainNameValid(ReaderNextState.ValidDomainName, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.linkedin.urls.detection.DomainNameReader.ReaderNextState checkDomainNameValid(com.linkedin.urls.detection.DomainNameReader.ReaderNextState r8, java.lang.Character r9) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.urls.detection.DomainNameReader.checkDomainNameValid(com.linkedin.urls.detection.DomainNameReader$ReaderNextState, java.lang.Character):com.linkedin.urls.detection.DomainNameReader$ReaderNextState");
    }
}
