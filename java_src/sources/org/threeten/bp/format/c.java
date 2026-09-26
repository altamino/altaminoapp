package org.threeten.bp.format;

import com.narvii.invite.InviteMembersFragment;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal.http2.Http2Connection;
import org.threeten.bp.r;
import org.threeten.bp.s;

/* JADX INFO: loaded from: classes8.dex */
public final class c {
    private static final Map<Character, org.threeten.bp.temporal.h> FIELD_MAP;
    static final Comparator<String> LENGTH_SORT;
    private static final org.threeten.bp.temporal.j<r> QUERY_REGION_ONLY = new a();
    private c active;
    private final boolean optional;
    private char padNextChar;
    private int padNextWidth;
    private final c parent;
    private final List<g> printerParsers;
    private int valueParserIndex;

    class b extends org.threeten.bp.format.e {
        final /* synthetic */ org.threeten.bp.format.i.b val$store;

        b(org.threeten.bp.format.i.b bVar) {
            this.val$store = bVar;
        }

        @Override // org.threeten.bp.format.e
        public String a(org.threeten.bp.temporal.h hVar, long j6, org.threeten.bp.format.j jVar, Locale locale) {
            return this.val$store.a(j6, jVar);
        }
    }

    static final class e implements g {
        private final char literal;

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            sb.append(this.literal);
            return true;
        }

        public String toString() {
            if (this.literal == '\'') {
                return "''";
            }
            return "'" + this.literal + "'";
        }

        e(char c7) {
            this.literal = c7;
        }
    }

    static final class f implements g {
        private final boolean optional;
        private final g[] printerParsers;

        f(List<g> list, boolean z6) {
            this((g[]) list.toArray(new g[list.size()]), z6);
        }

        f(g[] gVarArr, boolean z6) {
            this.printerParsers = gVarArr;
            this.optional = z6;
        }

        public f b(boolean z6) {
            return z6 == this.optional ? this : new f(this.printerParsers, z6);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.printerParsers != null) {
                sb.append(this.optional ? "[" : "(");
                for (g gVar : this.printerParsers) {
                    sb.append(gVar);
                }
                sb.append(this.optional ? "]" : ")");
            }
            return sb.toString();
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            int length = sb.length();
            if (this.optional) {
                dVar.h();
            }
            try {
                for (g gVar : this.printerParsers) {
                    if (!gVar.a(dVar, sb)) {
                        sb.setLength(length);
                        return true;
                    }
                }
                return true;
            } finally {
                if (this.optional) {
                    dVar.b();
                }
            }
        }
    }

    interface g {
        boolean a(org.threeten.bp.format.d dVar, StringBuilder sb);
    }

    static final class h implements g {
        private final boolean decimalPoint;
        private final org.threeten.bp.temporal.h field;
        private final int maxWidth;
        private final int minWidth;

        private BigDecimal b(long j6) {
            org.threeten.bp.temporal.m mVarD = this.field.d();
            mVarD.b(j6, this.field);
            BigDecimal bigDecimalValueOf = BigDecimal.valueOf(mVarD.d());
            BigDecimal bigDecimalDivide = BigDecimal.valueOf(j6).subtract(bigDecimalValueOf).divide(BigDecimal.valueOf(mVarD.c()).subtract(bigDecimalValueOf).add(BigDecimal.ONE), 9, RoundingMode.FLOOR);
            BigDecimal bigDecimal = BigDecimal.ZERO;
            return bigDecimalDivide.compareTo(bigDecimal) == 0 ? bigDecimal : bigDecimalDivide.stripTrailingZeros();
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            Long lF = dVar.f(this.field);
            if (lF == null) {
                return false;
            }
            org.threeten.bp.format.f fVarD = dVar.d();
            BigDecimal bigDecimalB = b(lF.longValue());
            if (bigDecimalB.scale() != 0) {
                String strA = fVarD.a(bigDecimalB.setScale(Math.min(Math.max(bigDecimalB.scale(), this.minWidth), this.maxWidth), RoundingMode.FLOOR).toPlainString().substring(2));
                if (this.decimalPoint) {
                    sb.append(fVarD.b());
                }
                sb.append(strA);
                return true;
            }
            if (this.minWidth <= 0) {
                return true;
            }
            if (this.decimalPoint) {
                sb.append(fVarD.b());
            }
            for (int i10 = 0; i10 < this.minWidth; i10++) {
                sb.append(fVarD.e());
            }
            return true;
        }

        public String toString() {
            return "Fraction(" + this.field + "," + this.minWidth + "," + this.maxWidth + (this.decimalPoint ? ",DecimalPoint" : "") + ")";
        }

        h(org.threeten.bp.temporal.h hVar, int i10, int i11, boolean z6) {
            ra.d.i(hVar, "field");
            if (hVar.d().e()) {
                if (i10 >= 0 && i10 <= 9) {
                    if (i11 >= 1 && i11 <= 9) {
                        if (i11 >= i10) {
                            this.field = hVar;
                            this.minWidth = i10;
                            this.maxWidth = i11;
                            this.decimalPoint = z6;
                            return;
                        }
                        throw new IllegalArgumentException("Maximum width must exceed or equal the minimum width but " + i11 + " < " + i10);
                    }
                    throw new IllegalArgumentException("Maximum width must be from 1 to 9 inclusive but was " + i11);
                }
                throw new IllegalArgumentException("Minimum width must be from 0 to 9 inclusive but was " + i10);
            }
            throw new IllegalArgumentException("Field must have a fixed set of values: " + hVar);
        }
    }

    static final class i implements g {
        private static final long SECONDS_0000_TO_1970 = 62167219200L;
        private static final long SECONDS_PER_10000_YEARS = 315569520000L;
        private final int fractionalDigits;

        public String toString() {
            return "Instant()";
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            Long lF = dVar.f(org.threeten.bp.temporal.a.INSTANT_SECONDS);
            org.threeten.bp.temporal.e eVarE = dVar.e();
            org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.NANO_OF_SECOND;
            Long lValueOf = eVarE.i(aVar) ? Long.valueOf(dVar.e().k(aVar)) : 0L;
            int i10 = 0;
            if (lF == null) {
                return false;
            }
            long jLongValue = lF.longValue();
            int i11 = aVar.i(lValueOf.longValue());
            if (jLongValue >= -62167219200L) {
                long j6 = jLongValue - 253402300800L;
                long jE = 1 + ra.d.e(j6, SECONDS_PER_10000_YEARS);
                org.threeten.bp.h hVarJ = org.threeten.bp.h.J(ra.d.h(j6, SECONDS_PER_10000_YEARS) - SECONDS_0000_TO_1970, 0, s.UTC);
                if (jE > 0) {
                    sb.append('+');
                    sb.append(jE);
                }
                sb.append(hVarJ);
                if (hVarJ.F() == 0) {
                    sb.append(":00");
                }
            } else {
                long j10 = jLongValue + SECONDS_0000_TO_1970;
                long j11 = j10 / SECONDS_PER_10000_YEARS;
                long j12 = j10 % SECONDS_PER_10000_YEARS;
                org.threeten.bp.h hVarJ2 = org.threeten.bp.h.J(j12 - SECONDS_0000_TO_1970, 0, s.UTC);
                int length = sb.length();
                sb.append(hVarJ2);
                if (hVarJ2.F() == 0) {
                    sb.append(":00");
                }
                if (j11 < 0) {
                    if (hVarJ2.G() == -10000) {
                        sb.replace(length, length + 2, Long.toString(j11 - 1));
                    } else if (j12 == 0) {
                        sb.insert(length, j11);
                    } else {
                        sb.insert(length + 1, Math.abs(j11));
                    }
                }
            }
            int i12 = this.fractionalDigits;
            if (i12 == -2) {
                if (i11 != 0) {
                    sb.append('.');
                    if (i11 % 1000000 == 0) {
                        sb.append(Integer.toString((i11 / 1000000) + 1000).substring(1));
                    } else if (i11 % 1000 == 0) {
                        sb.append(Integer.toString((i11 / 1000) + 1000000).substring(1));
                    } else {
                        sb.append(Integer.toString(i11 + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                    }
                }
            } else if (i12 > 0 || (i12 == -1 && i11 > 0)) {
                sb.append('.');
                int i13 = 100000000;
                while (true) {
                    int i14 = this.fractionalDigits;
                    if ((i14 != -1 || i11 <= 0) && i10 >= i14) {
                        break;
                    }
                    int i15 = i11 / i13;
                    sb.append((char) (i15 + 48));
                    i11 -= i15 * i13;
                    i13 /= 10;
                    i10++;
                }
            }
            sb.append(org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_ZERO);
            return true;
        }

        i(int i10) {
            this.fractionalDigits = i10;
        }
    }

    static class j implements g {
        static final int[] EXCEED_POINTS = {0, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, Http2Connection.DEGRADED_PONG_TIMEOUT_NS};
        final org.threeten.bp.temporal.h field;
        final int maxWidth;
        final int minWidth;
        final org.threeten.bp.format.h signStyle;
        final int subsequentWidth;

        j(org.threeten.bp.temporal.h hVar, int i10, int i11, org.threeten.bp.format.h hVar2) {
            this.field = hVar;
            this.minWidth = i10;
            this.maxWidth = i11;
            this.signStyle = hVar2;
            this.subsequentWidth = 0;
        }

        long b(org.threeten.bp.format.d dVar, long j6) {
            return j6;
        }

        private j(org.threeten.bp.temporal.h hVar, int i10, int i11, org.threeten.bp.format.h hVar2, int i12) {
            this.field = hVar;
            this.minWidth = i10;
            this.maxWidth = i11;
            this.signStyle = hVar2;
            this.subsequentWidth = i12;
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            Long lF = dVar.f(this.field);
            if (lF == null) {
                return false;
            }
            long jB = b(dVar, lF.longValue());
            org.threeten.bp.format.f fVarD = dVar.d();
            String string = jB == Long.MIN_VALUE ? "9223372036854775808" : Long.toString(Math.abs(jB));
            if (string.length() > this.maxWidth) {
                throw new org.threeten.bp.b("Field " + this.field + " cannot be printed as the value " + jB + " exceeds the maximum print width of " + this.maxWidth);
            }
            String strA = fVarD.a(string);
            if (jB >= 0) {
                int i10 = d.$SwitchMap$org$threeten$bp$format$SignStyle[this.signStyle.ordinal()];
                if (i10 == 1) {
                    int i11 = this.minWidth;
                    if (i11 < 19 && jB >= EXCEED_POINTS[i11]) {
                        sb.append(fVarD.d());
                    }
                } else if (i10 == 2) {
                    sb.append(fVarD.d());
                }
            } else {
                int i12 = d.$SwitchMap$org$threeten$bp$format$SignStyle[this.signStyle.ordinal()];
                if (i12 == 1 || i12 == 2 || i12 == 3) {
                    sb.append(fVarD.c());
                } else if (i12 == 4) {
                    throw new org.threeten.bp.b("Field " + this.field + " cannot be printed as the value " + jB + " cannot be negative according to the SignStyle");
                }
            }
            for (int i13 = 0; i13 < this.minWidth - strA.length(); i13++) {
                sb.append(fVarD.e());
            }
            sb.append(strA);
            return true;
        }

        j c() {
            return this.subsequentWidth == -1 ? this : new j(this.field, this.minWidth, this.maxWidth, this.signStyle, -1);
        }

        j d(int i10) {
            return new j(this.field, this.minWidth, this.maxWidth, this.signStyle, this.subsequentWidth + i10);
        }

        public String toString() {
            int i10 = this.minWidth;
            if (i10 == 1 && this.maxWidth == 19 && this.signStyle == org.threeten.bp.format.h.NORMAL) {
                return "Value(" + this.field + ")";
            }
            if (i10 == this.maxWidth && this.signStyle == org.threeten.bp.format.h.NOT_NEGATIVE) {
                return "Value(" + this.field + "," + this.minWidth + ")";
            }
            return "Value(" + this.field + "," + this.minWidth + "," + this.maxWidth + "," + this.signStyle + ")";
        }
    }

    static final class k implements g {
        private final String noOffsetText;
        private final int type;
        static final String[] PATTERNS = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};
        static final k INSTANCE_ID = new k("Z", "+HH:MM:ss");
        static final k INSTANCE_ID_ZERO = new k("0", "+HH:MM:ss");

        private int b(String str) {
            int i10 = 0;
            while (true) {
                String[] strArr = PATTERNS;
                if (i10 >= strArr.length) {
                    throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
                }
                if (strArr[i10].equals(str)) {
                    return i10;
                }
                i10++;
            }
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            Long lF = dVar.f(org.threeten.bp.temporal.a.OFFSET_SECONDS);
            if (lF == null) {
                return false;
            }
            int iP = ra.d.p(lF.longValue());
            if (iP == 0) {
                sb.append(this.noOffsetText);
            } else {
                int iAbs = Math.abs((iP / InviteMembersFragment.SECOND_HOUR) % 100);
                int iAbs2 = Math.abs((iP / 60) % 60);
                int iAbs3 = Math.abs(iP % 60);
                int length = sb.length();
                sb.append(iP < 0 ? "-" : org.slf4j.c.ANY_NON_NULL_MARKER);
                sb.append((char) ((iAbs / 10) + 48));
                sb.append((char) ((iAbs % 10) + 48));
                int i10 = this.type;
                if (i10 >= 3 || (i10 >= 1 && iAbs2 > 0)) {
                    sb.append(i10 % 2 == 0 ? ":" : "");
                    sb.append((char) ((iAbs2 / 10) + 48));
                    sb.append((char) ((iAbs2 % 10) + 48));
                    iAbs += iAbs2;
                    int i11 = this.type;
                    if (i11 >= 7 || (i11 >= 5 && iAbs3 > 0)) {
                        sb.append(i11 % 2 == 0 ? ":" : "");
                        sb.append((char) ((iAbs3 / 10) + 48));
                        sb.append((char) ((iAbs3 % 10) + 48));
                        iAbs += iAbs3;
                    }
                }
                if (iAbs == 0) {
                    sb.setLength(length);
                    sb.append(this.noOffsetText);
                }
            }
            return true;
        }

        public String toString() {
            return "Offset(" + PATTERNS[this.type] + ",'" + this.noOffsetText.replace("'", "''") + "')";
        }

        k(String str, String str2) {
            ra.d.i(str, "noOffsetText");
            ra.d.i(str2, "pattern");
            this.noOffsetText = str;
            this.type = b(str2);
        }
    }

    static final class l implements g {
        private final char padChar;
        private final int padWidth;
        private final g printerParser;

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append("Pad(");
            sb.append(this.printerParser);
            sb.append(",");
            sb.append(this.padWidth);
            if (this.padChar == ' ') {
                str = ")";
            } else {
                str = ",'" + this.padChar + "')";
            }
            sb.append(str);
            return sb.toString();
        }

        l(g gVar, int i10, char c7) {
            this.printerParser = gVar;
            this.padWidth = i10;
            this.padChar = c7;
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            int length = sb.length();
            if (!this.printerParser.a(dVar, sb)) {
                return false;
            }
            int length2 = sb.length() - length;
            if (length2 <= this.padWidth) {
                for (int i10 = 0; i10 < this.padWidth - length2; i10++) {
                    sb.insert(length, this.padChar);
                }
                return true;
            }
            throw new org.threeten.bp.b("Cannot print as output of " + length2 + " characters exceeds pad width of " + this.padWidth);
        }
    }

    static final class n implements g {
        private final String literal;

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            sb.append(this.literal);
            return true;
        }

        public String toString() {
            return "'" + this.literal.replace("'", "''") + "'";
        }

        n(String str) {
            this.literal = str;
        }
    }

    static final class o implements g {
        private final org.threeten.bp.temporal.h field;
        private volatile j numberPrinterParser;
        private final org.threeten.bp.format.e provider;
        private final org.threeten.bp.format.j textStyle;

        private j b() {
            if (this.numberPrinterParser == null) {
                this.numberPrinterParser = new j(this.field, 1, 19, org.threeten.bp.format.h.NORMAL);
            }
            return this.numberPrinterParser;
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            Long lF = dVar.f(this.field);
            if (lF == null) {
                return false;
            }
            String strA = this.provider.a(this.field, lF.longValue(), this.textStyle, dVar.c());
            if (strA == null) {
                return b().a(dVar, sb);
            }
            sb.append(strA);
            return true;
        }

        public String toString() {
            if (this.textStyle == org.threeten.bp.format.j.FULL) {
                return "Text(" + this.field + ")";
            }
            return "Text(" + this.field + "," + this.textStyle + ")";
        }

        o(org.threeten.bp.temporal.h hVar, org.threeten.bp.format.j jVar, org.threeten.bp.format.e eVar) {
            this.field = hVar;
            this.textStyle = jVar;
            this.provider = eVar;
        }
    }

    static final class p implements g {
        private static volatile Map.Entry<Integer, Object> cachedSubstringTree;
        private final String description;
        private final org.threeten.bp.temporal.j<r> query;

        public String toString() {
            return this.description;
        }

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            r rVar = (r) dVar.g(this.query);
            if (rVar == null) {
                return false;
            }
            sb.append(rVar.n());
            return true;
        }

        p(org.threeten.bp.temporal.j<r> jVar, String str) {
            this.query = jVar;
            this.description = str;
        }
    }

    public c() {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = null;
        this.optional = false;
    }

    class a implements org.threeten.bp.temporal.j<r> {
        a() {
        }

        @Override // org.threeten.bp.temporal.j
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public r a(org.threeten.bp.temporal.e eVar) {
            r rVar = (r) eVar.d(org.threeten.bp.temporal.i.g());
            if (rVar == null || (rVar instanceof s)) {
                return null;
            }
            return rVar;
        }
    }

    /* JADX INFO: renamed from: org.threeten.bp.format.c$c, reason: collision with other inner class name */
    class C0486c implements Comparator<String> {
        C0486c() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            if (str.length() == str2.length()) {
                return str.compareTo(str2);
            }
            return str.length() - str2.length();
        }
    }

    static /* synthetic */ class d {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$format$SignStyle;

        static {
            int[] iArr = new int[org.threeten.bp.format.h.values().length];
            $SwitchMap$org$threeten$bp$format$SignStyle = iArr;
            try {
                iArr[org.threeten.bp.format.h.EXCEEDS_PAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[org.threeten.bp.format.h.ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[org.threeten.bp.format.h.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$format$SignStyle[org.threeten.bp.format.h.NOT_NEGATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    enum m implements g {
        SENSITIVE,
        INSENSITIVE,
        STRICT,
        LENIENT;

        @Override // org.threeten.bp.format.c.g
        public boolean a(org.threeten.bp.format.d dVar, StringBuilder sb) {
            return true;
        }

        @Override // java.lang.Enum
        public String toString() {
            int iOrdinal = ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal != 2) {
                        if (iOrdinal == 3) {
                            return "ParseStrict(false)";
                        }
                        throw new IllegalStateException("Unreachable");
                    }
                    return "ParseStrict(true)";
                }
                return "ParseCaseSensitive(false)";
            }
            return "ParseCaseSensitive(true)";
        }
    }

    static {
        HashMap map = new HashMap();
        FIELD_MAP = map;
        map.put('G', org.threeten.bp.temporal.a.ERA);
        map.put('y', org.threeten.bp.temporal.a.YEAR_OF_ERA);
        map.put(Character.valueOf(kotlinx.serialization.json.internal.b.UNICODE_ESC), org.threeten.bp.temporal.a.YEAR);
        org.threeten.bp.temporal.h hVar = org.threeten.bp.temporal.c.QUARTER_OF_YEAR;
        map.put('Q', hVar);
        map.put('q', hVar);
        org.threeten.bp.temporal.a aVar = org.threeten.bp.temporal.a.MONTH_OF_YEAR;
        map.put('M', aVar);
        map.put(Character.valueOf(org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_RANDOM_LT), aVar);
        map.put('D', org.threeten.bp.temporal.a.DAY_OF_YEAR);
        map.put('d', org.threeten.bp.temporal.a.DAY_OF_MONTH);
        map.put('F', org.threeten.bp.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        org.threeten.bp.temporal.a aVar2 = org.threeten.bp.temporal.a.DAY_OF_WEEK;
        map.put('E', aVar2);
        map.put('c', aVar2);
        map.put('e', aVar2);
        map.put('a', org.threeten.bp.temporal.a.AMPM_OF_DAY);
        map.put('H', org.threeten.bp.temporal.a.HOUR_OF_DAY);
        map.put('k', org.threeten.bp.temporal.a.CLOCK_HOUR_OF_DAY);
        map.put('K', org.threeten.bp.temporal.a.HOUR_OF_AMPM);
        map.put('h', org.threeten.bp.temporal.a.CLOCK_HOUR_OF_AMPM);
        map.put('m', org.threeten.bp.temporal.a.MINUTE_OF_HOUR);
        map.put('s', org.threeten.bp.temporal.a.SECOND_OF_MINUTE);
        org.threeten.bp.temporal.a aVar3 = org.threeten.bp.temporal.a.NANO_OF_SECOND;
        map.put('S', aVar3);
        map.put('A', org.threeten.bp.temporal.a.MILLI_OF_DAY);
        map.put('n', aVar3);
        map.put('N', org.threeten.bp.temporal.a.NANO_OF_DAY);
        LENGTH_SORT = new C0486c();
    }

    private int d(g gVar) {
        ra.d.i(gVar, "pp");
        c cVar = this.active;
        int i10 = cVar.padNextWidth;
        if (i10 > 0) {
            if (gVar != null) {
                gVar = new l(gVar, i10, cVar.padNextChar);
            }
            c cVar2 = this.active;
            cVar2.padNextWidth = 0;
            cVar2.padNextChar = (char) 0;
        }
        this.active.printerParsers.add(gVar);
        c cVar3 = this.active;
        cVar3.valueParserIndex = -1;
        return cVar3.printerParsers.size() - 1;
    }

    private c j(j jVar) {
        j jVarC;
        c cVar = this.active;
        int i10 = cVar.valueParserIndex;
        if (i10 < 0 || !(cVar.printerParsers.get(i10) instanceof j)) {
            this.active.valueParserIndex = d(jVar);
        } else {
            c cVar2 = this.active;
            int i11 = cVar2.valueParserIndex;
            j jVar2 = (j) cVar2.printerParsers.get(i11);
            int i12 = jVar.minWidth;
            int i13 = jVar.maxWidth;
            if (i12 == i13 && jVar.signStyle == org.threeten.bp.format.h.NOT_NEGATIVE) {
                jVarC = jVar2.d(i13);
                d(jVar.c());
                this.active.valueParserIndex = i11;
            } else {
                jVarC = jVar2.c();
                this.active.valueParserIndex = d(jVar);
            }
            this.active.printerParsers.set(i11, jVarC);
        }
        return this;
    }

    public c a(org.threeten.bp.format.b bVar) {
        ra.d.i(bVar, "formatter");
        d(bVar.g(false));
        return this;
    }

    public c b(org.threeten.bp.temporal.h hVar, int i10, int i11, boolean z6) {
        d(new h(hVar, i10, i11, z6));
        return this;
    }

    public c c() {
        d(new i(-2));
        return this;
    }

    public c e(char c7) {
        d(new e(c7));
        return this;
    }

    public c f(String str) {
        ra.d.i(str, "literal");
        if (str.length() > 0) {
            if (str.length() == 1) {
                d(new e(str.charAt(0)));
            } else {
                d(new n(str));
            }
        }
        return this;
    }

    public c g(String str, String str2) {
        d(new k(str2, str));
        return this;
    }

    public c h() {
        d(k.INSTANCE_ID);
        return this;
    }

    public c i(org.threeten.bp.temporal.h hVar, Map<Long, String> map) {
        ra.d.i(hVar, "field");
        ra.d.i(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        org.threeten.bp.format.j jVar = org.threeten.bp.format.j.FULL;
        d(new o(hVar, jVar, new b(new org.threeten.bp.format.i.b(Collections.singletonMap(jVar, linkedHashMap)))));
        return this;
    }

    public c k(org.threeten.bp.temporal.h hVar, int i10) {
        ra.d.i(hVar, "field");
        if (i10 >= 1 && i10 <= 19) {
            j(new j(hVar, i10, i10, org.threeten.bp.format.h.NOT_NEGATIVE));
            return this;
        }
        throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i10);
    }

    public c l(org.threeten.bp.temporal.h hVar, int i10, int i11, org.threeten.bp.format.h hVar2) {
        if (i10 == i11 && hVar2 == org.threeten.bp.format.h.NOT_NEGATIVE) {
            return k(hVar, i11);
        }
        ra.d.i(hVar, "field");
        ra.d.i(hVar2, "signStyle");
        if (i10 < 1 || i10 > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i10);
        }
        if (i11 < 1 || i11 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i11);
        }
        if (i11 >= i10) {
            j(new j(hVar, i10, i11, hVar2));
            return this;
        }
        throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i11 + " < " + i10);
    }

    public c m() {
        d(new p(QUERY_REGION_ONLY, "ZoneRegionId()"));
        return this;
    }

    public c n() {
        c cVar = this.active;
        if (cVar.parent == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (cVar.printerParsers.size() > 0) {
            c cVar2 = this.active;
            f fVar = new f(cVar2.printerParsers, cVar2.optional);
            this.active = this.active.parent;
            d(fVar);
        } else {
            this.active = this.active.parent;
        }
        return this;
    }

    public c o() {
        c cVar = this.active;
        cVar.valueParserIndex = -1;
        this.active = new c(cVar, true);
        return this;
    }

    public c p() {
        d(m.INSENSITIVE);
        return this;
    }

    public c q() {
        d(m.SENSITIVE);
        return this;
    }

    public c r() {
        d(m.LENIENT);
        return this;
    }

    public org.threeten.bp.format.b t(Locale locale) {
        ra.d.i(locale, "locale");
        while (this.active.parent != null) {
            n();
        }
        return new org.threeten.bp.format.b(new f(this.printerParsers, false), locale, org.threeten.bp.format.f.STANDARD, org.threeten.bp.format.g.SMART, null, null, null);
    }

    private c(c cVar, boolean z6) {
        this.active = this;
        this.printerParsers = new ArrayList();
        this.valueParserIndex = -1;
        this.parent = cVar;
        this.optional = z6;
    }

    public org.threeten.bp.format.b s() {
        return t(Locale.getDefault());
    }

    org.threeten.bp.format.b u(org.threeten.bp.format.g gVar) {
        return s().i(gVar);
    }
}
