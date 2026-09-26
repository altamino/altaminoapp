package com.linkedin.urls.detection;

import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import qa.y;

/* JADX INFO: loaded from: classes5.dex */
public class f {
    private e _buffer;
    private final g _options;
    private final com.linkedin.urls.detection.d _reader;
    private int _schemeType = 0;
    private boolean _quoteStart = false;
    private boolean _singleQuoteStart = false;
    private boolean _dontMatchIpv6 = false;
    private ArrayList<com.linkedin.urls.a> _urlList = new ArrayList<>();
    private HashMap<Character, Integer> _characterMatch = new HashMap<>();
    private com.linkedin.urls.b _currentUrlMarker = new com.linkedin.urls.b();

    class a implements com.linkedin.urls.detection.c.a {
        a() {
        }

        @Override // com.linkedin.urls.detection.c.a
        public void a(char c7) {
            f.this.b(c7);
        }
    }

    private enum c {
        CharacterNotMatched,
        CharacterMatchStop,
        CharacterMatchStart
    }

    public enum d {
        ValidUrl,
        InvalidUrl
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c b(char c7) {
        boolean z6;
        if ((c7 == '\"' && this._options.b(g.QUOTE_MATCH)) || (c7 == '\'' && this._options.b(g.SINGLE_QUOTE_MATCH))) {
            if (c7 == '\"') {
                z6 = this._quoteStart;
                this._quoteStart = true;
            } else {
                z6 = this._singleQuoteStart;
                this._singleQuoteStart = true;
            }
            Integer numValueOf = Integer.valueOf(d(c7) + 1);
            this._characterMatch.put(Character.valueOf(c7), numValueOf);
            return (z6 || numValueOf.intValue() % 2 == 0) ? c.CharacterMatchStop : c.CharacterMatchStart;
        }
        g gVar = this._options;
        g gVar2 = g.BRACKET_MATCH;
        char c10 = '(';
        if (gVar.b(gVar2) && (c7 == '[' || c7 == '{' || c7 == '(')) {
            this._characterMatch.put(Character.valueOf(c7), Integer.valueOf(d(c7) + 1));
            return c.CharacterMatchStart;
        }
        g gVar3 = this._options;
        g gVar4 = g.XML;
        if (gVar3.b(gVar4) && c7 == '<') {
            this._characterMatch.put(Character.valueOf(c7), Integer.valueOf(d(c7) + 1));
            return c.CharacterMatchStart;
        }
        if ((!this._options.b(gVar2) || (c7 != ']' && c7 != '}' && c7 != ')')) && (!this._options.b(gVar4) || c7 != '>')) {
            return c.CharacterNotMatched;
        }
        Integer numValueOf2 = Integer.valueOf(d(c7) + 1);
        this._characterMatch.put(Character.valueOf(c7), numValueOf2);
        if (c7 != ')') {
            if (c7 == '>') {
                c10 = '<';
            } else if (c7 != ']') {
                c10 = c7 != '}' ? (char) 0 : '{';
            } else {
                c10 = '[';
            }
        }
        return d(c10) > numValueOf2.intValue() ? c.CharacterMatchStop : c.CharacterMatchStart;
    }

    private void h() {
        int iH;
        loop0: while (true) {
            iH = 0;
            while (true) {
                if (!this._reader.c()) {
                    char cJ = this._reader.j();
                    if (this._buffer.h() == 0 && !com.linkedin.urls.detection.a.j(cJ)) {
                        j(d.InvalidUrl);
                        break;
                    }
                    if (cJ == ' ') {
                        if ((this._options.b(g.ALLOW_SINGLE_LEVEL_DOMAIN) && this._buffer.h() > 0 && this._schemeType > 0) || (this._schemeType == 2 && this._buffer.h() > 0)) {
                            this._reader.g();
                            i(this._buffer.j(iH));
                        }
                        this._buffer.a(cJ);
                        j(d.InvalidUrl);
                        break;
                    }
                    if (cJ != '#') {
                        if (cJ == '%') {
                            if (!this._reader.a(2)) {
                                continue;
                            } else if (!this._reader.h(2).equalsIgnoreCase("3a")) {
                                if (com.linkedin.urls.detection.a.f(this._reader.i(0)) && com.linkedin.urls.detection.a.f(this._reader.i(1))) {
                                    this._buffer.a(cJ);
                                    this._buffer.a(this._reader.j());
                                    this._buffer.a(this._reader.j());
                                    i(this._buffer.j(iH));
                                    break;
                                }
                            } else {
                                this._buffer.a(cJ);
                                this._buffer.a(this._reader.j());
                                this._buffer.a(this._reader.j());
                                iH = g(iH);
                            }
                        } else if (cJ == ':') {
                            this._buffer.a(cJ);
                            iH = g(iH);
                        } else if (cJ != '@') {
                            if (cJ == '[') {
                                if (this._dontMatchIpv6 && b(cJ) != c.CharacterNotMatched) {
                                    j(d.InvalidUrl);
                                    iH = 0;
                                }
                                int iD = this._reader.d();
                                if (this._schemeType == 0) {
                                    e eVar = this._buffer;
                                    eVar.c(0, eVar.h());
                                }
                                this._buffer.a(cJ);
                                if (!i(this._buffer.j(iH))) {
                                    this._reader.k(iD);
                                    this._dontMatchIpv6 = true;
                                    break;
                                }
                                break;
                            }
                            if (cJ != 65283) {
                                if (cJ == '.') {
                                    this._buffer.a(cJ);
                                    i(this._buffer.j(iH));
                                    break;
                                }
                                if (cJ != '/') {
                                    if (b(cJ) != c.CharacterNotMatched || !com.linkedin.urls.detection.a.i(cJ)) {
                                        if (this._schemeType != 2) {
                                            j(d.InvalidUrl);
                                            break;
                                        } else {
                                            this._reader.g();
                                            i(this._buffer.j(iH));
                                            break;
                                        }
                                    }
                                    this._buffer.a(cJ);
                                } else if (this._schemeType > 0 || (this._options.b(g.ALLOW_SINGLE_LEVEL_DOMAIN) && this._buffer.h() > 1)) {
                                    this._reader.g();
                                    i(this._buffer.j(iH));
                                    break;
                                } else {
                                    j(d.InvalidUrl);
                                    this._buffer.a(cJ);
                                    this._schemeType = m() ? 1 : 0;
                                    iH = this._buffer.h();
                                }
                            }
                        } else if (this._buffer.h() > 0) {
                            this._currentUrlMarker.b(com.linkedin.urls.c.USERNAME_PASSWORD, iH);
                            this._buffer.a(cJ);
                            i(null);
                            break;
                        }
                    }
                    int iD2 = this._reader.d();
                    if (!i(this._buffer.j(iH))) {
                        this._reader.k(iD2);
                        d dVar = d.InvalidUrl;
                        j(dVar);
                        if (this._reader.d() > 1) {
                            char cI = this._reader.i(-2);
                            if (cI != '&' && !com.linkedin.urls.detection.a.d(cI) && !com.linkedin.urls.detection.a.e(cI)) {
                                l();
                                break;
                            } else {
                                j(dVar);
                                break;
                            }
                        }
                        l();
                        break;
                    }
                } else {
                    break loop0;
                }
            }
        }
        if ((!this._options.b(g.ALLOW_SINGLE_LEVEL_DOMAIN) || this._buffer.h() <= 0 || this._schemeType <= 0) && (this._schemeType != 2 || this._buffer.h() <= 0)) {
            return;
        }
        i(this._buffer.j(iH));
    }

    private void l() {
        boolean z6 = false;
        while (!this._reader.c()) {
            char cJ = this._reader.j();
            if (com.linkedin.urls.detection.a.e(cJ)) {
                this._buffer.a(cJ);
            } else {
                if (!com.linkedin.urls.detection.a.d(cJ)) {
                    if (this._buffer.h() == 0) {
                        j(d.InvalidUrl);
                        return;
                    }
                    if (z6 && cJ != 65283 && cJ != '#') {
                        String strE = this._buffer.e();
                        int iD = this._reader.d() - 1;
                        this._urlList.add(new com.linkedin.urls.a((iD - strE.length()) - 1, iD, strE, com.linkedin.urls.a.EnumC0279a.HASHTAG));
                    }
                    j(d.InvalidUrl);
                    return;
                }
                this._buffer.a(cJ);
                z6 = true;
            }
        }
        if (this._buffer.h() > 0 && z6) {
            String strE2 = this._buffer.e();
            int iF = this._reader.f();
            this._urlList.add(new com.linkedin.urls.a((iF - strE2.length()) - 1, iF, strE2, com.linkedin.urls.a.EnumC0279a.HASHTAG));
        }
        j(d.InvalidUrl);
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState;

        static {
            int[] iArr = new int[com.linkedin.urls.detection.c.b.values().length];
            $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState = iArr;
            try {
                iArr[com.linkedin.urls.detection.c.b.ValidDomainName.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[com.linkedin.urls.detection.c.b.ReadFragment.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[com.linkedin.urls.detection.c.b.ReadPath.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[com.linkedin.urls.detection.c.b.ReadPort.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[com.linkedin.urls.detection.c.b.ReadQueryString.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private int d(char c7) {
        Integer num = this._characterMatch.get(Character.valueOf(c7));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0036 A[PHI: r3
      0x0036: PHI (r3v6 int) = (r3v5 int), (r3v7 int) binds: [B:16:0x0038, B:14:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    private boolean e(int i10) {
        boolean z6 = false;
        if (i10 == 0) {
            int iH = this._buffer.h() - 1;
            while (iH >= 0) {
                char cB = this._buffer.b(iH);
                if (com.linkedin.urls.detection.a.l(cB) || cB == ')') {
                    break;
                }
                this._buffer.d(iH);
                this._reader.g();
                iH--;
                z6 = true;
            }
            return z6;
        }
        int iMax = Math.max(this._buffer.g(String.valueOf('/')), 0);
        int i11 = 0;
        int i12 = iMax;
        while (iMax < this._buffer.h()) {
            char cB2 = this._buffer.b(iMax);
            if (cB2 == '(') {
                i11++;
            } else if (cB2 == ')') {
                i11--;
                if (i11 < 0) {
                    break;
                }
                if (i11 == 0) {
                    i12 = iMax;
                }
            } else if (i11 == 0) {
                i12 = iMax;
            }
            iMax++;
        }
        e eVar = this._buffer;
        eVar.c(i12 + 1, eVar.h());
        return true;
    }

    private boolean f() {
        int iH = this._buffer.h() - 1;
        boolean z6 = false;
        while (iH >= 0 && !com.linkedin.urls.detection.a.n(this._buffer.b(iH))) {
            this._buffer.d(iH);
            this._reader.g();
            iH--;
            z6 = true;
        }
        return z6;
    }

    private int g(int i10) {
        if (this._schemeType != 1) {
            int iQ = q();
            if (iQ > 0 && this._buffer.h() > 0) {
                this._schemeType = iQ;
                return this._buffer.h();
            }
            if (this._buffer.h() > 0 && this._options.b(g.ALLOW_SINGLE_LEVEL_DOMAIN) && this._reader.a(1)) {
                this._reader.g();
                e eVar = this._buffer;
                eVar.c(eVar.h() - 1, this._buffer.h());
                i(this._buffer.e());
                return i10;
            }
            j(d.InvalidUrl);
        } else {
            if (r(i10) || this._buffer.h() <= 0) {
                return i10;
            }
            this._reader.g();
            e eVar2 = this._buffer;
            eVar2.c(eVar2.h() - 1, this._buffer.h());
            int iD = (this._reader.d() - this._buffer.h()) + i10;
            if (!i(this._buffer.j(i10))) {
                this._reader.k(iD);
                j(d.InvalidUrl);
            }
        }
        return 0;
    }

    private boolean i(String str) {
        int iH = this._buffer.h();
        if (str != null) {
            iH -= str.length();
        }
        this._currentUrlMarker.b(com.linkedin.urls.c.HOST, iH);
        com.linkedin.urls.detection.d dVar = this._reader;
        e eVar = this._buffer;
        int i10 = this._schemeType;
        int i11 = b.$SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState[new com.linkedin.urls.detection.c(dVar, eVar, str, i10, i10 == 2 ? g.ALLOW_SINGLE_LEVEL_DOMAIN : this._options, new a()).c().ordinal()];
        if (i11 == 1) {
            return j(d.ValidUrl);
        }
        if (i11 == 2) {
            return k();
        }
        if (i11 == 3) {
            return n();
        }
        if (i11 != 4) {
            return i11 != 5 ? j(d.InvalidUrl) : p();
        }
        return o();
    }

    private boolean j(d dVar) {
        d dVar2 = d.ValidUrl;
        if (dVar == dVar2 && this._buffer.h() > 0) {
            int iH = this._buffer.h();
            if (this._quoteStart) {
                int i10 = iH - 1;
                if (this._buffer.b(i10) == '\"') {
                    this._buffer.c(i10, iH);
                }
            }
            if (this._buffer.h() > 0 && this._currentUrlMarker.a(com.linkedin.urls.c.USERNAME_PASSWORD) < 0) {
                String strE = this._buffer.e();
                int iF = this._buffer.f();
                this._urlList.add(new com.linkedin.urls.a(iF, strE.length() + iF, strE, com.linkedin.urls.a.EnumC0279a.URL));
            }
        }
        e eVar = this._buffer;
        eVar.c(0, eVar.h());
        this._quoteStart = false;
        this._schemeType = 0;
        this._dontMatchIpv6 = false;
        this._currentUrlMarker = new com.linkedin.urls.b();
        return dVar == dVar2;
    }

    private boolean k() {
        this._currentUrlMarker.b(com.linkedin.urls.c.FRAGMENT, this._buffer.h() - 1);
        while (!this._reader.c()) {
            char cJ = this._reader.j();
            if (cJ == ' ' || b(cJ) != c.CharacterNotMatched) {
                f();
                return j(d.ValidUrl);
            }
            this._buffer.a(cJ);
        }
        f();
        return j(d.ValidUrl);
    }

    private boolean m() {
        if (this._reader.c()) {
            return false;
        }
        char cJ = this._reader.j();
        if (cJ == '/') {
            this._buffer.a(cJ);
            return true;
        }
        this._reader.g();
        j(d.InvalidUrl);
        return false;
    }

    private boolean n() {
        this._currentUrlMarker.b(com.linkedin.urls.c.PATH, this._buffer.h() - 1);
        int i10 = 0;
        while (!this._reader.c()) {
            char cJ = this._reader.j();
            if (cJ == ' ' || b(cJ) != c.CharacterNotMatched) {
                e(i10);
                return j(d.ValidUrl);
            }
            if (cJ == '?') {
                if (e(i10)) {
                    return j(d.ValidUrl);
                }
                this._buffer.a(cJ);
                return p();
            }
            if (cJ == '#') {
                if (i10 != 0) {
                    e(i10);
                    return j(d.ValidUrl);
                }
                this._buffer.a(cJ);
                return k();
            }
            if (cJ == '(') {
                i10++;
                this._buffer.a(cJ);
            } else if (cJ == ')') {
                i10--;
                this._buffer.a(cJ);
                if (i10 < 0) {
                    e(i10);
                    return j(d.ValidUrl);
                }
            } else if (cJ == '/') {
                if (i10 != 0) {
                    e(i10);
                    return j(d.ValidUrl);
                }
                this._buffer.a(cJ);
            } else {
                if (!com.linkedin.urls.detection.a.k(cJ)) {
                    e(i10);
                    return j(d.ValidUrl);
                }
                this._buffer.a(cJ);
            }
        }
        e(i10);
        return j(d.ValidUrl);
    }

    private boolean o() {
        this._currentUrlMarker.b(com.linkedin.urls.c.PORT, this._buffer.h());
        int i10 = 0;
        while (!this._reader.c()) {
            char cJ = this._reader.j();
            i10++;
            if (cJ == '/') {
                this._buffer.a(cJ);
                return n();
            }
            if (cJ == '?') {
                this._buffer.a(cJ);
                return p();
            }
            if (cJ == '#') {
                this._buffer.a(cJ);
                return k();
            }
            if (b(cJ) == c.CharacterMatchStop || !com.linkedin.urls.detection.a.h(cJ)) {
                this._reader.g();
                if (i10 == 1) {
                    e eVar = this._buffer;
                    eVar.c(eVar.h() - 1, this._buffer.h());
                }
                this._currentUrlMarker.c(com.linkedin.urls.c.PORT);
                return j(d.ValidUrl);
            }
            this._buffer.a(cJ);
        }
        return j(d.ValidUrl);
    }

    private boolean p() {
        this._currentUrlMarker.b(com.linkedin.urls.c.QUERY, this._buffer.h() - 1);
        while (!this._reader.c()) {
            char cJ = this._reader.j();
            if (cJ == '#') {
                this._buffer.a(cJ);
                return k();
            }
            if (cJ == ' ' || b(cJ) != c.CharacterNotMatched) {
                f();
                return j(d.ValidUrl);
            }
            if (!com.linkedin.urls.detection.a.m(cJ)) {
                f();
                return j(d.ValidUrl);
            }
            this._buffer.a(cJ);
        }
        f();
        return j(d.ValidUrl);
    }

    private int q() {
        int iH = this._buffer.h();
        int i10 = 0;
        while (!this._reader.c()) {
            char cJ = this._reader.j();
            if (cJ == '/') {
                this._buffer.a(cJ);
                if (i10 == 1) {
                    int iT = t(this._buffer.e().toLowerCase());
                    if (iT <= 0) {
                        return 0;
                    }
                    this._currentUrlMarker.b(com.linkedin.urls.c.SCHEME, 0);
                    return iT;
                }
                i10++;
            } else {
                if (cJ == ' ' || b(cJ) != c.CharacterNotMatched) {
                    this._buffer.a(cJ);
                    break;
                }
                if (cJ == '[') {
                    this._reader.g();
                    return 0;
                }
                if (iH > 0 || i10 > 0 || !com.linkedin.urls.detection.a.a(cJ)) {
                    this._reader.g();
                    return r(0) ? 1 : 0;
                }
            }
        }
        return 0;
    }

    private boolean r(int i10) {
        int i11;
        int iH = this._buffer.h();
        int i12 = 0;
        loop0: while (true) {
            i11 = i12;
            while (i12 == 0 && !this._reader.c()) {
                char cJ = this._reader.j();
                if (cJ == '@') {
                    this._buffer.a(cJ);
                    this._currentUrlMarker.b(com.linkedin.urls.c.USERNAME_PASSWORD, i10);
                    return i("");
                }
                if (com.linkedin.urls.detection.a.c(cJ) || cJ == '[') {
                    this._buffer.a(cJ);
                    i11 = 1;
                } else if (cJ == '#' || cJ == ' ' || cJ == '/' || b(cJ) != c.CharacterNotMatched) {
                    i12 = 1;
                } else {
                    this._buffer.a(cJ);
                }
            }
            break loop0;
        }
        if (i11 == 0) {
            return j(d.InvalidUrl);
        }
        int iH2 = this._buffer.h() - iH;
        e eVar = this._buffer;
        eVar.c(iH, eVar.h());
        this._reader.k(Math.max((this._reader.d() - iH2) - i12, 0));
        return false;
    }

    private boolean s(String str, int i10, int i11) {
        while (i10 < i11) {
            if (!com.linkedin.urls.detection.a.h(str.charAt(i10))) {
                return false;
            }
            i10++;
        }
        return true;
    }

    private int t(String str) {
        if (y.HTTP.equals(str) || y.HTTPS.equals(str)) {
            return 1;
        }
        if ("ndc://".equals(str)) {
            return 2;
        }
        if (!str.endsWith("://")) {
            return 0;
        }
        if (str.startsWith("aminoapp") && s(str, 8, str.length() - 3)) {
            return 2;
        }
        return (str.startsWith("pabkitapp") && s(str, 9, str.length() + (-3))) ? 2 : 0;
    }

    public f(String str, g gVar) {
        com.linkedin.urls.detection.d dVar = new com.linkedin.urls.detection.d(str);
        this._reader = dVar;
        this._buffer = new e(dVar);
        this._options = gVar;
    }

    public List<com.linkedin.urls.a> c() {
        try {
            h();
        } catch (Exception unused) {
            int iD = this._reader.d();
            Log.e("UrlDetector", "malformed link detected, content = " + this._reader.e(Math.max(iD - 50, 0), Math.min(iD + 50, this._reader.f())));
        }
        return this._urlList;
    }
}
