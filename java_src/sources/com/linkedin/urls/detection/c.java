package com.linkedin.urls.detection;

/* JADX INFO: loaded from: classes5.dex */
public class c {
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
    private e _buffer;
    private final a _characterHandler;
    private String _current;
    private g _options;
    private final d _reader;
    private int _schemeType;
    private int _dots = 0;
    private int _currentLabelLength = 0;
    private int _topLevelLength = 0;
    private int _startDomainName = 0;
    private boolean _numeric = false;
    private boolean _seenBracket = false;
    private boolean _seenCompleteBracketSet = false;
    private boolean _zoneIndex = false;

    interface a {
        void a(char c7);
    }

    public enum b {
        InvalidDomainName,
        ValidDomainName,
        ReadFragment,
        ReadPath,
        ReadPort,
        ReadQueryString
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0045 A[PHI: r8
      0x0045: PHI (r8v1 com.linkedin.urls.detection.c$b) = 
      (r8v0 com.linkedin.urls.detection.c$b)
      (r8v0 com.linkedin.urls.detection.c$b)
      (r8v0 com.linkedin.urls.detection.c$b)
      (r8v0 com.linkedin.urls.detection.c$b)
      (r8v0 com.linkedin.urls.detection.c$b)
      (r8v0 com.linkedin.urls.detection.c$b)
      (r8v6 com.linkedin.urls.detection.c$b)
     binds: [B:17:0x003a, B:19:0x003e, B:22:0x0043, B:25:0x004a, B:33:0x005e, B:35:0x0062, B:58:0x00da] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    private b a(b bVar, Character ch) {
        int i10;
        boolean z6 = true;
        if (this._buffer.h() > 3) {
            e eVar = this._buffer;
            i10 = eVar.j(eVar.h() - 3).equalsIgnoreCase("%2e") ? 3 : 1;
        }
        int iH = this._buffer.h() - this._startDomainName;
        int i11 = this._currentLabelLength;
        if (i11 <= 0) {
            i10 = 0;
        }
        int i12 = iH + i10;
        int i13 = this._dots;
        int i14 = (i11 > 0 ? 1 : 0) + i13;
        if (i12 >= 255 || i14 > 127 || this._numeric || this._seenBracket) {
            z6 = false;
        } else {
            if ((i11 <= 0 || i13 < 1) && ((i13 < 2 || i11 != 0) && !(this._options.b(g.ALLOW_SINGLE_LEVEL_DOMAIN) && this._dots == 0))) {
                z6 = false;
            } else {
                int iH2 = this._buffer.h() - this._topLevelLength;
                if (this._currentLabelLength == 0) {
                    iH2--;
                }
                int iMax = Math.max(iH2, 0);
                e eVar2 = this._buffer;
                if (!eVar2.k(iMax, Math.min(4, eVar2.h() - iMax) + iMax).equalsIgnoreCase("xn--")) {
                    int i15 = this._topLevelLength;
                    boolean z10 = i15 >= (this._schemeType == 2 ? 1 : 2) && i15 <= 22;
                    if (this._dots >= 1) {
                        if (this._buffer.h() > 0) {
                            e eVar3 = this._buffer;
                            if (eVar3.b(eVar3.h() - 1) == '.') {
                                e eVar4 = this._buffer;
                                eVar4.d(eVar4.h() - 1);
                                bVar = b.ValidDomainName;
                                this._dots--;
                            }
                        }
                        String[] strArrP = com.linkedin.urls.detection.a.p(this._buffer.e());
                        if (strArrP.length > 0) {
                            String lowerCase = strArrP[strArrP.length - 1].toLowerCase();
                            if (this._dots != 1 || bVar == b.ReadPath || this._schemeType != 0 ? !(com.linkedin.urls.detection.b.URL_VALID_GTLD.contains(lowerCase) || com.linkedin.urls.detection.b.URl_VALID_CCTLD.contains(lowerCase)) : !(com.linkedin.urls.detection.b.URL_VALID_GTLD.contains(lowerCase) || "co".equals(lowerCase) || "tv".equals(lowerCase))) {
                                z6 = false;
                            }
                            z10 &= z6;
                        } else {
                            z6 = false;
                        }
                    }
                    z6 = z10;
                }
            }
        }
        if (!z6) {
            this._reader.g();
            return b.InvalidDomainName;
        }
        if (ch != null) {
            this._buffer.a(ch.charValue());
        }
        return bVar;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:95:0x00ff A[SYNTHETIC] */
    private b b() {
        int i10;
        char c7;
        String str = this._current;
        if (str == null) {
            this._startDomainName = this._buffer.h();
        } else {
            if (str.length() == 1 && com.linkedin.urls.detection.a.c(this._current.charAt(0))) {
                return b.InvalidDomainName;
            }
            if (this._current.length() == 3 && this._current.equalsIgnoreCase("%2e")) {
                return b.InvalidDomainName;
            }
            this._startDomainName = this._buffer.h() - this._current.length();
            this._numeric = true;
            char[] charArray = this._current.toCharArray();
            int length = charArray.length;
            boolean z6 = length > 2 && charArray[0] == '0' && ((c7 = charArray[1]) == 'x' || c7 == 'X');
            int i11 = z6 ? 2 : 0;
            boolean z10 = false;
            int i12 = 0;
            while (i11 < length && !z10) {
                char c10 = charArray[i11];
                int i13 = this._currentLabelLength + 1;
                this._currentLabelLength = i13;
                this._topLevelLength = i13;
                if (i13 > 64) {
                    return b.InvalidDomainName;
                }
                if (com.linkedin.urls.detection.a.c(c10)) {
                    this._dots++;
                    this._currentLabelLength = 0;
                } else if (c10 == '[') {
                    this._seenBracket = true;
                    this._numeric = false;
                } else if (c10 == '%' && (i10 = i11 + 2) < length) {
                    int i14 = i11 + 1;
                    if (com.linkedin.urls.detection.a.f(charArray[i14]) && com.linkedin.urls.detection.a.f(charArray[i10])) {
                        if (charArray[i14] == '2' && charArray[i10] == 'e') {
                            this._dots++;
                            this._currentLabelLength = 0;
                        } else {
                            this._numeric = false;
                        }
                        i11 = i10;
                    } else if (z6) {
                        if (!com.linkedin.urls.detection.a.f(c10)) {
                            this._numeric = false;
                            i11--;
                            z6 = false;
                        }
                    } else if (com.linkedin.urls.detection.a.a(c10)) {
                        this._numeric = false;
                    } else {
                        this._numeric = false;
                    }
                } else if (z6) {
                    if (!com.linkedin.urls.detection.a.f(c10)) {
                        this._numeric = false;
                        i11--;
                        z6 = false;
                    }
                } else if (com.linkedin.urls.detection.a.a(c10) || c10 == '-' || c10 >= 192) {
                    this._numeric = false;
                } else if (!com.linkedin.urls.detection.a.h(c10) && !this._options.b(g.ALLOW_SINGLE_LEVEL_DOMAIN)) {
                    i12 = i11 + 1;
                    this._currentLabelLength = 0;
                    this._topLevelLength = 0;
                    this._numeric = true;
                    this._dots = 0;
                    z10 = true;
                }
                i11++;
            }
            if (i12 > 0) {
                if (i12 < this._current.length()) {
                    e eVar = this._buffer;
                    eVar.i(0, eVar.h(), this._current.substring(i12));
                    this._startDomainName = 0;
                }
                if (i12 >= this._current.length() || this._buffer.e().equals(".")) {
                    return b.InvalidDomainName;
                }
            }
        }
        return b.ValidDomainName;
    }

    public c(d dVar, e eVar, String str, int i10, g gVar, a aVar) {
        this._buffer = eVar;
        this._current = str;
        this._schemeType = i10;
        this._reader = dVar;
        this._options = gVar;
        this._characterHandler = aVar;
    }

    public b c() {
        b bVarB = b();
        b bVar = b.InvalidDomainName;
        if (bVarB == bVar) {
            return bVar;
        }
        boolean z6 = false;
        while (!z6 && !this._reader.c()) {
            char cJ = this._reader.j();
            if (cJ == '/') {
                return a(b.ReadPath, Character.valueOf(cJ));
            }
            if (cJ == ':' && (!this._seenBracket || this._seenCompleteBracketSet)) {
                return a(b.ReadPort, Character.valueOf(cJ));
            }
            if (cJ == '?') {
                return a(b.ReadQueryString, Character.valueOf(cJ));
            }
            if (cJ == '#') {
                return a(b.ReadFragment, Character.valueOf(cJ));
            }
            if (!com.linkedin.urls.detection.a.c(cJ) && (cJ != '%' || !this._reader.a(2) || !this._reader.h(2).equalsIgnoreCase(HEX_ENCODED_DOT))) {
                if (this._seenBracket && ((com.linkedin.urls.detection.a.f(cJ) || cJ == ':' || cJ == '[' || cJ == ']' || cJ == '%') && !this._seenCompleteBracketSet)) {
                    if (cJ != '%') {
                        if (cJ != ':') {
                            if (cJ != '[') {
                                if (cJ != ']') {
                                    this._currentLabelLength++;
                                } else {
                                    this._seenCompleteBracketSet = true;
                                    this._zoneIndex = false;
                                }
                            } else {
                                this._reader.g();
                                return b.InvalidDomainName;
                            }
                        } else {
                            this._currentLabelLength = 0;
                        }
                    } else {
                        this._zoneIndex = true;
                    }
                    this._numeric = false;
                    this._buffer.a(cJ);
                } else if (com.linkedin.urls.detection.a.i(cJ)) {
                    if (this._seenCompleteBracketSet) {
                        this._reader.g();
                        z6 = true;
                    } else {
                        if (cJ != 'x' && cJ != 'X' && !com.linkedin.urls.detection.a.h(cJ)) {
                            this._numeric = false;
                        }
                        this._buffer.a(cJ);
                        int i10 = this._currentLabelLength + 1;
                        this._currentLabelLength = i10;
                        this._topLevelLength = i10;
                    }
                } else if (cJ == '[' && !this._seenBracket) {
                    this._seenBracket = true;
                    this._numeric = false;
                    this._buffer.a(cJ);
                } else {
                    if (cJ == '[' && this._seenCompleteBracketSet) {
                        this._reader.g();
                    } else if (cJ == '%' && this._reader.a(2) && com.linkedin.urls.detection.a.f(this._reader.i(0)) && com.linkedin.urls.detection.a.f(this._reader.i(1))) {
                        this._buffer.a(cJ);
                        this._buffer.a(this._reader.j());
                        this._buffer.a(this._reader.j());
                        int i11 = this._currentLabelLength + 3;
                        this._currentLabelLength = i11;
                        this._topLevelLength = i11;
                    } else {
                        this._characterHandler.a(cJ);
                    }
                    z6 = true;
                }
            } else if (this._currentLabelLength < 1) {
                z6 = true;
            } else {
                this._buffer.a(cJ);
                if (!com.linkedin.urls.detection.a.c(cJ)) {
                    this._buffer.a(this._reader.j());
                    this._buffer.a(this._reader.j());
                }
                if (!this._zoneIndex) {
                    this._dots++;
                    this._currentLabelLength = 0;
                }
                if (this._currentLabelLength >= 64) {
                    return b.InvalidDomainName;
                }
            }
        }
        return a(b.ValidDomainName, null);
    }
}
