package com.linkedin.urls.detection;

import com.linkedin.urls.Entity;
import com.linkedin.urls.UrlMarker;
import com.linkedin.urls.UrlPart;
import com.linkedin.urls.detection.DomainNameReader;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class UrlDetector {
    private UrlBuffer _buffer;
    private final UrlDetectorOptions _options;
    private final InputTextReader _reader;
    private int _schemeType = 0;
    private boolean _quoteStart = false;
    private boolean _singleQuoteStart = false;
    private boolean _dontMatchIpv6 = false;
    private ArrayList<Entity> _urlList = new ArrayList<>();
    private HashMap<Character, Integer> _characterMatch = new HashMap<>();
    private UrlMarker _currentUrlMarker = new UrlMarker();

    private enum CharacterMatch {
        CharacterNotMatched,
        CharacterMatchStop,
        CharacterMatchStart
    }

    public enum ReadEndState {
        ValidUrl,
        InvalidUrl
    }

    public UrlDetector(String str, UrlDetectorOptions urlDetectorOptions) {
        this._reader = new InputTextReader(str);
        this._buffer = new UrlBuffer(this._reader);
        this._options = urlDetectorOptions;
    }

    public List<Entity> detect() {
        try {
            readDefault();
        } catch (Exception unused) {
            int position = this._reader.getPosition();
            Log.e("UrlDetector", "malformed link detected, content = " + this._reader.getRangeContent(Math.max(position - 50, 0), Math.min(position + 50, this._reader.getTotalLength())));
        }
        return this._urlList;
    }

    private void readDefault() {
        int length;
        loop0: while (true) {
            length = 0;
            while (!this._reader.eof()) {
                char c = this._reader.read();
                if (this._buffer.length() == 0 && !CharUtils.isValidDomainStartChar(c)) {
                    readEnd(ReadEndState.InvalidUrl);
                } else if (c == ' ') {
                    if ((this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) && this._buffer.length() > 0 && this._schemeType > 0) || (this._schemeType == 2 && this._buffer.length() > 0)) {
                        this._reader.goBack();
                        readDomainName(this._buffer.substring(length));
                    }
                    this._buffer.append(c);
                    readEnd(ReadEndState.InvalidUrl);
                } else {
                    if (c != '#') {
                        if (c != '%') {
                            if (c == ':') {
                                this._buffer.append(c);
                                length = processColon(length);
                            } else if (c != '@') {
                                if (c == '[') {
                                    if (this._dontMatchIpv6 && checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                                        readEnd(ReadEndState.InvalidUrl);
                                        length = 0;
                                    }
                                    int position = this._reader.getPosition();
                                    if (this._schemeType == 0) {
                                        UrlBuffer urlBuffer = this._buffer;
                                        urlBuffer.delete(0, urlBuffer.length());
                                    }
                                    this._buffer.append(c);
                                    if (!readDomainName(this._buffer.substring(length))) {
                                        this._reader.seek(position);
                                        this._dontMatchIpv6 = true;
                                    }
                                } else if (c != 65283) {
                                    if (c == '.') {
                                        this._buffer.append(c);
                                        readDomainName(this._buffer.substring(length));
                                    } else if (c == '/') {
                                        if (this._schemeType > 0 || (this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) && this._buffer.length() > 1)) {
                                            this._reader.goBack();
                                            readDomainName(this._buffer.substring(length));
                                        } else {
                                            readEnd(ReadEndState.InvalidUrl);
                                            this._buffer.append(c);
                                            this._schemeType = readHtml5Root() ? 1 : 0;
                                            length = this._buffer.length();
                                        }
                                    } else if (checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched || !CharUtils.isValidDomainChar(c)) {
                                        if (this._schemeType == 2) {
                                            this._reader.goBack();
                                            readDomainName(this._buffer.substring(length));
                                        } else {
                                            readEnd(ReadEndState.InvalidUrl);
                                        }
                                    } else {
                                        this._buffer.append(c);
                                    }
                                }
                            } else if (this._buffer.length() > 0) {
                                this._currentUrlMarker.setIndex(UrlPart.USERNAME_PASSWORD, length);
                                this._buffer.append(c);
                                readDomainName(null);
                            }
                        } else if (!this._reader.canReadChars(2)) {
                            continue;
                        } else if (this._reader.peek(2).equalsIgnoreCase("3a")) {
                            this._buffer.append(c);
                            this._buffer.append(this._reader.read());
                            this._buffer.append(this._reader.read());
                            length = processColon(length);
                        } else if (CharUtils.isHex(this._reader.peekChar(0)) && CharUtils.isHex(this._reader.peekChar(1))) {
                            this._buffer.append(c);
                            this._buffer.append(this._reader.read());
                            this._buffer.append(this._reader.read());
                            readDomainName(this._buffer.substring(length));
                        }
                    }
                    int position2 = this._reader.getPosition();
                    if (!readDomainName(this._buffer.substring(length))) {
                        this._reader.seek(position2);
                        readEnd(ReadEndState.InvalidUrl);
                        if (this._reader.getPosition() <= 1) {
                            readHashtag();
                        } else {
                            char cPeekChar = this._reader.peekChar(-2);
                            if (cPeekChar != '&' && !CharUtils.isHashtagAlphaChars(cPeekChar) && !CharUtils.isHashtagNumberChar(cPeekChar)) {
                                readHashtag();
                            } else {
                                readEnd(ReadEndState.InvalidUrl);
                            }
                        }
                    }
                }
            }
            break loop0;
        }
        if ((!this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) || this._buffer.length() <= 0 || this._schemeType <= 0) && (this._schemeType != 2 || this._buffer.length() <= 0)) {
            return;
        }
        readDomainName(this._buffer.substring(length));
    }

    private int processColon(int i) {
        if (this._schemeType == 1) {
            if (readUserPass(i) || this._buffer.length() <= 0) {
                return i;
            }
            this._reader.goBack();
            UrlBuffer urlBuffer = this._buffer;
            urlBuffer.delete(urlBuffer.length() - 1, this._buffer.length());
            int position = (this._reader.getPosition() - this._buffer.length()) + i;
            if (!readDomainName(this._buffer.substring(i))) {
                this._reader.seek(position);
                readEnd(ReadEndState.InvalidUrl);
            }
        } else {
            int scheme = readScheme();
            if (scheme > 0 && this._buffer.length() > 0) {
                this._schemeType = scheme;
                return this._buffer.length();
            }
            if (this._buffer.length() > 0 && this._options.hasFlag(UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN) && this._reader.canReadChars(1)) {
                this._reader.goBack();
                UrlBuffer urlBuffer2 = this._buffer;
                urlBuffer2.delete(urlBuffer2.length() - 1, this._buffer.length());
                readDomainName(this._buffer.getBufferString());
                return i;
            }
            readEnd(ReadEndState.InvalidUrl);
        }
        return 0;
    }

    private int getCharacterCount(char c) {
        Integer num = this._characterMatch.get(Character.valueOf(c));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharacterMatch checkMatchingCharacter(char c) {
        boolean z;
        if ((c == '\"' && this._options.hasFlag(UrlDetectorOptions.QUOTE_MATCH)) || (c == '\'' && this._options.hasFlag(UrlDetectorOptions.SINGLE_QUOTE_MATCH))) {
            if (c == '\"') {
                z = this._quoteStart;
                this._quoteStart = true;
            } else {
                z = this._singleQuoteStart;
                this._singleQuoteStart = true;
            }
            Integer numValueOf = Integer.valueOf(getCharacterCount(c) + 1);
            this._characterMatch.put(Character.valueOf(c), numValueOf);
            return (z || numValueOf.intValue() % 2 == 0) ? CharacterMatch.CharacterMatchStop : CharacterMatch.CharacterMatchStart;
        }
        if (this._options.hasFlag(UrlDetectorOptions.BRACKET_MATCH) && (c == '[' || c == '{' || c == '(')) {
            this._characterMatch.put(Character.valueOf(c), Integer.valueOf(getCharacterCount(c) + 1));
            return CharacterMatch.CharacterMatchStart;
        }
        if (this._options.hasFlag(UrlDetectorOptions.XML) && c == '<') {
            this._characterMatch.put(Character.valueOf(c), Integer.valueOf(getCharacterCount(c) + 1));
            return CharacterMatch.CharacterMatchStart;
        }
        if ((this._options.hasFlag(UrlDetectorOptions.BRACKET_MATCH) && (c == ']' || c == '}' || c == ')')) || (this._options.hasFlag(UrlDetectorOptions.XML) && c == '>')) {
            Integer numValueOf2 = Integer.valueOf(getCharacterCount(c) + 1);
            this._characterMatch.put(Character.valueOf(c), numValueOf2);
            char c2 = 0;
            if (c == ')') {
                c2 = '(';
            } else if (c == '>') {
                c2 = '<';
            } else if (c == ']') {
                c2 = '[';
            } else if (c == '}') {
                c2 = '{';
            }
            return getCharacterCount(c2) > numValueOf2.intValue() ? CharacterMatch.CharacterMatchStop : CharacterMatch.CharacterMatchStart;
        }
        return CharacterMatch.CharacterNotMatched;
    }

    private boolean readHtml5Root() {
        if (this._reader.eof()) {
            return false;
        }
        char c = this._reader.read();
        if (c == '/') {
            this._buffer.append(c);
            return true;
        }
        this._reader.goBack();
        readEnd(ReadEndState.InvalidUrl);
        return false;
    }

    private int validScheme(String str) {
        if ("http://".equals(str) || "https://".equals(str)) {
            return 1;
        }
        if ("ndc://".equals(str)) {
            return 2;
        }
        if (!str.endsWith("://")) {
            return 0;
        }
        if (str.startsWith("narviiapp") && validNdcid(str, 9, str.length() - 3)) {
            return 2;
        }
        return (str.startsWith("pebkitapp") && validNdcid(str, 9, str.length() + (-3))) ? 2 : 0;
    }

    private boolean validNdcid(String str, int i, int i2) {
        while (i < i2) {
            if (!CharUtils.isNumeric(str.charAt(i))) {
                return false;
            }
            i++;
        }
        return true;
    }

    private int readScheme() {
        int length = this._buffer.length();
        int i = 0;
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == '/') {
                this._buffer.append(c);
                if (i == 1) {
                    int iValidScheme = validScheme(this._buffer.getBufferString().toLowerCase());
                    if (iValidScheme <= 0) {
                        return 0;
                    }
                    this._currentUrlMarker.setIndex(UrlPart.SCHEME, 0);
                    return iValidScheme;
                }
                i++;
            } else {
                if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                    this._buffer.append(c);
                    break;
                }
                if (c == '[') {
                    this._reader.goBack();
                    return 0;
                }
                if (length > 0 || i > 0 || !CharUtils.isAlpha(c)) {
                    this._reader.goBack();
                    return readUserPass(0) ? 1 : 0;
                }
            }
        }
        return 0;
    }

    private boolean readUserPass(int i) {
        int length = this._buffer.length();
        int i2 = 0;
        boolean z = false;
        while (i2 == 0 && !this._reader.eof()) {
            char c = this._reader.read();
            if (c == '@') {
                this._buffer.append(c);
                this._currentUrlMarker.setIndex(UrlPart.USERNAME_PASSWORD, i);
                return readDomainName("");
            }
            if (CharUtils.isDot(c) || c == '[') {
                this._buffer.append(c);
                z = true;
            } else if (c == '#' || c == ' ' || c == '/' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                i2 = 1;
                z = true;
            } else {
                this._buffer.append(c);
            }
        }
        if (z) {
            int length2 = this._buffer.length() - length;
            UrlBuffer urlBuffer = this._buffer;
            urlBuffer.delete(length, urlBuffer.length());
            this._reader.seek(Math.max((this._reader.getPosition() - length2) - i2, 0));
            return false;
        }
        return readEnd(ReadEndState.InvalidUrl);
    }

    private boolean readDomainName(String str) {
        int length = this._buffer.length();
        if (str != null) {
            length -= str.length();
        }
        this._currentUrlMarker.setIndex(UrlPart.HOST, length);
        InputTextReader inputTextReader = this._reader;
        UrlBuffer urlBuffer = this._buffer;
        int i = this._schemeType;
        int i2 = AnonymousClass2.$SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[new DomainNameReader(inputTextReader, urlBuffer, str, i, i == 2 ? UrlDetectorOptions.ALLOW_SINGLE_LEVEL_DOMAIN : this._options, new DomainNameReader.CharacterHandler() { // from class: com.linkedin.urls.detection.UrlDetector.1
            @Override // com.linkedin.urls.detection.DomainNameReader.CharacterHandler
            public void addCharacter(char c) {
                UrlDetector.this.checkMatchingCharacter(c);
            }
        }).readDomainName().ordinal()];
        if (i2 == 1) {
            return readEnd(ReadEndState.ValidUrl);
        }
        if (i2 == 2) {
            return readFragment();
        }
        if (i2 == 3) {
            return readPath();
        }
        if (i2 == 4) {
            return readPort();
        }
        if (i2 == 5) {
            return readQueryString();
        }
        return readEnd(ReadEndState.InvalidUrl);
    }

    /* renamed from: com.linkedin.urls.detection.UrlDetector$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState = new int[DomainNameReader.ReaderNextState.values().length];

        static {
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[DomainNameReader.ReaderNextState.ValidDomainName.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[DomainNameReader.ReaderNextState.ReadFragment.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[DomainNameReader.ReaderNextState.ReadPath.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[DomainNameReader.ReaderNextState.ReadPort.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[DomainNameReader.ReaderNextState.ReadQueryString.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private boolean readFragment() {
        this._currentUrlMarker.setIndex(UrlPart.FRAGMENT, this._buffer.length() - 1);
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                goBackToRemoveInvalidQueryEnd();
                return readEnd(ReadEndState.ValidUrl);
            }
            this._buffer.append(c);
        }
        goBackToRemoveInvalidQueryEnd();
        return readEnd(ReadEndState.ValidUrl);
    }

    private boolean readQueryString() {
        this._currentUrlMarker.setIndex(UrlPart.QUERY, this._buffer.length() - 1);
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == '#') {
                this._buffer.append(c);
                return readFragment();
            }
            if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                goBackToRemoveInvalidQueryEnd();
                return readEnd(ReadEndState.ValidUrl);
            }
            if (CharUtils.isValidQueryChar(c)) {
                this._buffer.append(c);
            } else {
                goBackToRemoveInvalidQueryEnd();
                return readEnd(ReadEndState.ValidUrl);
            }
        }
        goBackToRemoveInvalidQueryEnd();
        return readEnd(ReadEndState.ValidUrl);
    }

    private boolean goBackToRemoveInvalidQueryEnd() {
        int length = this._buffer.length() - 1;
        boolean z = false;
        while (length >= 0 && !CharUtils.isValidQueryEndChar(this._buffer.charAt(length))) {
            this._buffer.deleteCharAt(length);
            this._reader.goBack();
            length--;
            z = true;
        }
        return z;
    }

    private boolean readPort() {
        this._currentUrlMarker.setIndex(UrlPart.PORT, this._buffer.length());
        int i = 0;
        while (!this._reader.eof()) {
            char c = this._reader.read();
            i++;
            if (c == '/') {
                this._buffer.append(c);
                return readPath();
            }
            if (c == '?') {
                this._buffer.append(c);
                return readQueryString();
            }
            if (c == '#') {
                this._buffer.append(c);
                return readFragment();
            }
            if (checkMatchingCharacter(c) == CharacterMatch.CharacterMatchStop || !CharUtils.isNumeric(c)) {
                this._reader.goBack();
                if (i == 1) {
                    UrlBuffer urlBuffer = this._buffer;
                    urlBuffer.delete(urlBuffer.length() - 1, this._buffer.length());
                }
                this._currentUrlMarker.unsetIndex(UrlPart.PORT);
                return readEnd(ReadEndState.ValidUrl);
            }
            this._buffer.append(c);
        }
        return readEnd(ReadEndState.ValidUrl);
    }

    private boolean readPath() {
        this._currentUrlMarker.setIndex(UrlPart.PATH, this._buffer.length() - 1);
        int i = 0;
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (c == ' ' || checkMatchingCharacter(c) != CharacterMatch.CharacterNotMatched) {
                goBackToRemoveInvalidPathEnd(i);
                return readEnd(ReadEndState.ValidUrl);
            }
            if (c == '?') {
                if (goBackToRemoveInvalidPathEnd(i)) {
                    return readEnd(ReadEndState.ValidUrl);
                }
                this._buffer.append(c);
                return readQueryString();
            }
            if (c == '#') {
                if (i != 0) {
                    goBackToRemoveInvalidPathEnd(i);
                    return readEnd(ReadEndState.ValidUrl);
                }
                this._buffer.append(c);
                return readFragment();
            }
            if (c == '(') {
                i++;
                this._buffer.append(c);
            } else if (c == ')') {
                i--;
                this._buffer.append(c);
                if (i < 0) {
                    goBackToRemoveInvalidPathEnd(i);
                    return readEnd(ReadEndState.ValidUrl);
                }
            } else if (c == '/') {
                if (i != 0) {
                    goBackToRemoveInvalidPathEnd(i);
                    return readEnd(ReadEndState.ValidUrl);
                }
                this._buffer.append(c);
            } else if (CharUtils.isValidPathChar(c)) {
                this._buffer.append(c);
            } else {
                goBackToRemoveInvalidPathEnd(i);
                return readEnd(ReadEndState.ValidUrl);
            }
        }
        goBackToRemoveInvalidPathEnd(i);
        return readEnd(ReadEndState.ValidUrl);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038 A[PHI: r1
  0x0038: PHI (r1v7 int) = (r1v5 int), (r1v8 int) binds: [B:16:0x0036, B:14:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean goBackToRemoveInvalidPathEnd(int r7) {
        /*
            r6 = this;
            r0 = 41
            r1 = 0
            r2 = 1
            if (r7 == 0) goto L48
            com.linkedin.urls.detection.UrlBuffer r7 = r6._buffer
            r3 = 47
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r7 = r7.lastIndexOf(r3)
            int r7 = java.lang.Math.max(r7, r1)
            r3 = r7
        L17:
            com.linkedin.urls.detection.UrlBuffer r4 = r6._buffer
            int r4 = r4.length()
            if (r7 >= r4) goto L3c
            com.linkedin.urls.detection.UrlBuffer r4 = r6._buffer
            char r4 = r4.charAt(r7)
            r5 = 40
            if (r4 != r5) goto L2c
            int r1 = r1 + 1
            goto L39
        L2c:
            if (r4 != r0) goto L36
            int r1 = r1 + (-1)
            if (r1 >= 0) goto L33
            goto L3c
        L33:
            if (r1 != 0) goto L39
            goto L38
        L36:
            if (r1 != 0) goto L39
        L38:
            r3 = r7
        L39:
            int r7 = r7 + 1
            goto L17
        L3c:
            com.linkedin.urls.detection.UrlBuffer r7 = r6._buffer
            int r3 = r3 + r2
            int r0 = r7.length()
            r7.delete(r3, r0)
            r1 = 1
            goto L6d
        L48:
            com.linkedin.urls.detection.UrlBuffer r7 = r6._buffer
            int r7 = r7.length()
            int r7 = r7 - r2
        L4f:
            if (r7 < 0) goto L6d
            com.linkedin.urls.detection.UrlBuffer r3 = r6._buffer
            char r3 = r3.charAt(r7)
            boolean r4 = com.linkedin.urls.detection.CharUtils.isValidPathEndChar(r3)
            if (r4 != 0) goto L6d
            if (r3 == r0) goto L6d
            com.linkedin.urls.detection.UrlBuffer r1 = r6._buffer
            r1.deleteCharAt(r7)
            com.linkedin.urls.detection.InputTextReader r1 = r6._reader
            r1.goBack()
            int r7 = r7 + (-1)
            r1 = 1
            goto L4f
        L6d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.linkedin.urls.detection.UrlDetector.goBackToRemoveInvalidPathEnd(int):boolean");
    }

    private void readHashtag() {
        boolean z = false;
        while (!this._reader.eof()) {
            char c = this._reader.read();
            if (CharUtils.isHashtagNumberChar(c)) {
                this._buffer.append(c);
            } else if (CharUtils.isHashtagAlphaChars(c)) {
                this._buffer.append(c);
                z = true;
            } else {
                if (this._buffer.length() == 0) {
                    readEnd(ReadEndState.InvalidUrl);
                    return;
                }
                if (z && c != 65283 && c != '#') {
                    String bufferString = this._buffer.getBufferString();
                    int position = this._reader.getPosition() - 1;
                    this._urlList.add(new Entity((position - bufferString.length()) - 1, position, bufferString, Entity.Type.HASHTAG));
                }
                readEnd(ReadEndState.InvalidUrl);
                return;
            }
        }
        if (this._buffer.length() > 0 && z) {
            String bufferString2 = this._buffer.getBufferString();
            int totalLength = this._reader.getTotalLength();
            this._urlList.add(new Entity((totalLength - bufferString2.length()) - 1, totalLength, bufferString2, Entity.Type.HASHTAG));
        }
        readEnd(ReadEndState.InvalidUrl);
    }

    private boolean readEnd(ReadEndState readEndState) {
        if (readEndState == ReadEndState.ValidUrl && this._buffer.length() > 0) {
            int length = this._buffer.length();
            if (this._quoteStart) {
                int i = length - 1;
                if (this._buffer.charAt(i) == '\"') {
                    this._buffer.delete(i, length);
                }
            }
            if (this._buffer.length() > 0 && this._currentUrlMarker.indexOf(UrlPart.USERNAME_PASSWORD) < 0) {
                String bufferString = this._buffer.getBufferString();
                int startIndex = this._buffer.getStartIndex();
                this._urlList.add(new Entity(startIndex, bufferString.length() + startIndex, bufferString, Entity.Type.URL));
            }
        }
        UrlBuffer urlBuffer = this._buffer;
        urlBuffer.delete(0, urlBuffer.length());
        this._quoteStart = false;
        this._schemeType = 0;
        this._dontMatchIpv6 = false;
        this._currentUrlMarker = new UrlMarker();
        return readEndState == ReadEndState.ValidUrl;
    }
}
