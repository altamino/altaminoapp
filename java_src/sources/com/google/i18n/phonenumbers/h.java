package com.google.i18n.phonenumbers;

import com.narvii.monetization.bubble.BubbleService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class h {
    private static final Map<Character, Character> ALL_PLUS_NUMBER_GROUPING_SYMBOLS;
    private static final Map<Character, Character> ALPHA_MAPPINGS;
    private static final Map<Character, Character> ALPHA_PHONE_MAPPINGS;
    private static final Pattern CAPTURING_DIGIT_PATTERN;
    private static final String CAPTURING_EXTN_DIGITS = "(\\p{Nd}{1,7})";
    private static final String CC_STRING = "$CC";
    private static final String COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX = "3";
    private static final String DEFAULT_EXTN_PREFIX = " ext. ";
    private static final Map<Character, Character> DIALLABLE_CHAR_MAPPINGS;
    private static final String DIGITS = "\\p{Nd}";
    private static final Pattern EXTN_PATTERN;
    static final String EXTN_PATTERNS_FOR_MATCHING;
    private static final String EXTN_PATTERNS_FOR_PARSING;
    private static final String FG_STRING = "$FG";
    private static final Pattern FIRST_GROUP_ONLY_PREFIX_PATTERN;
    private static final Pattern FIRST_GROUP_PATTERN;
    private static final Set<Integer> GEO_MOBILE_COUNTRIES;
    private static final Set<Integer> GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES;
    private static final int MAX_INPUT_STRING_LENGTH = 250;
    static final int MAX_LENGTH_COUNTRY_CODE = 3;
    static final int MAX_LENGTH_FOR_NSN = 17;
    private static final int MIN_LENGTH_FOR_NSN = 2;
    private static final Map<Integer, String> MOBILE_TOKEN_MAPPINGS;
    private static final int NANPA_COUNTRY_CODE = 1;
    static final Pattern NON_DIGITS_PATTERN;
    private static final String NP_STRING = "$NP";
    static final String PLUS_CHARS = "+＋";
    static final Pattern PLUS_CHARS_PATTERN;
    static final char PLUS_SIGN = '+';
    static final int REGEX_FLAGS = 66;
    public static final String REGION_CODE_FOR_NON_GEO_ENTITY = "001";
    private static final String RFC3966_EXTN_PREFIX = ";ext=";
    private static final String RFC3966_ISDN_SUBADDRESS = ";isub=";
    private static final String RFC3966_PHONE_CONTEXT = ";phone-context=";
    private static final String RFC3966_PREFIX = "tel:";
    private static final String SECOND_NUMBER_START = "[\\\\/] *x";
    static final Pattern SECOND_NUMBER_START_PATTERN;
    private static final Pattern SEPARATOR_PATTERN;
    private static final Pattern SINGLE_INTERNATIONAL_PREFIX;
    private static final char STAR_SIGN = '*';
    private static final String UNKNOWN_REGION = "ZZ";
    private static final String UNWANTED_END_CHARS = "[[\\P{N}&&\\P{L}]&&[^#]]+$";
    static final Pattern UNWANTED_END_CHAR_PATTERN;
    private static final String VALID_ALPHA;
    private static final Pattern VALID_ALPHA_PHONE_PATTERN;
    private static final String VALID_PHONE_NUMBER;
    private static final Pattern VALID_PHONE_NUMBER_PATTERN;
    static final String VALID_PUNCTUATION = "-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～";
    private static final String VALID_START_CHAR = "[+＋\\p{Nd}]";
    private static final Pattern VALID_START_CHAR_PATTERN;
    private static h instance;
    private static final Logger logger = Logger.getLogger(h.class.getName());
    private final Map<Integer, List<String>> countryCallingCodeToRegionCodeMap;
    private final e metadataSource;
    private final com.google.i18n.phonenumbers.internal.a matcherApi = com.google.i18n.phonenumbers.internal.b.b();
    private final Set<String> nanpaRegions = new HashSet(35);
    private final com.google.i18n.phonenumbers.internal.c regexCache = new com.google.i18n.phonenumbers.internal.c(100);
    private final Set<String> supportedRegions = new HashSet(BubbleService.DEFAULT_DENSITY);
    private final Set<Integer> countryCodesForNonGeographicalRegion = new HashSet();

    public enum b {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    public enum c {
        FIXED_LINE,
        MOBILE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    public enum d {
        IS_POSSIBLE,
        IS_POSSIBLE_LOCAL_ONLY,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        INVALID_LENGTH,
        TOO_LONG
    }

    public static String w(CharSequence charSequence) {
        return v(charSequence, false).toString();
    }

    public void z(CharSequence charSequence, String str, m mVar) throws g {
        A(charSequence, str, false, true, mVar);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat;
        static final /* synthetic */ int[] $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType;
        static final /* synthetic */ int[] $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource;

        static {
            int[] iArr = new int[c.values().length];
            $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType = iArr;
            try {
                iArr[c.PREMIUM_RATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.TOLL_FREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.FIXED_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.FIXED_LINE_OR_MOBILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[c.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr2 = new int[b.values().length];
            $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat = iArr2;
            try {
                iArr2[b.E164.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[b.INTERNATIONAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[b.RFC3966.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat[b.NATIONAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            int[] iArr3 = new int[m.a.values().length];
            $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource = iArr3;
            try {
                iArr3[m.a.FROM_NUMBER_WITH_PLUS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[m.a.FROM_NUMBER_WITH_IDD.ordinal()] = 2;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[m.a.FROM_NUMBER_WITHOUT_PLUS_SIGN.ordinal()] = 3;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource[m.a.FROM_DEFAULT_COUNTRY.ordinal()] = 4;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    static {
        HashMap map = new HashMap();
        map.put(52, "1");
        map.put(54, "9");
        MOBILE_TOKEN_MAPPINGS = Collections.unmodifiableMap(map);
        HashSet hashSet = new HashSet();
        hashSet.add(86);
        GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(52);
        hashSet2.add(54);
        hashSet2.add(55);
        hashSet2.add(62);
        hashSet2.addAll(hashSet);
        GEO_MOBILE_COUNTRIES = Collections.unmodifiableSet(hashSet2);
        HashMap map2 = new HashMap();
        map2.put('0', '0');
        map2.put('1', '1');
        map2.put('2', '2');
        map2.put('3', '3');
        map2.put('4', '4');
        map2.put('5', '5');
        map2.put('6', '6');
        map2.put('7', '7');
        map2.put('8', '8');
        map2.put('9', '9');
        HashMap map3 = new HashMap(40);
        map3.put('A', '2');
        map3.put('B', '2');
        map3.put('C', '2');
        map3.put('D', '3');
        map3.put('E', '3');
        map3.put('F', '3');
        map3.put('G', '4');
        map3.put('H', '4');
        map3.put('I', '4');
        map3.put('J', '5');
        map3.put('K', '5');
        map3.put(Character.valueOf(org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_RANDOM_LT), '5');
        map3.put('M', '6');
        map3.put('N', '6');
        map3.put('O', '6');
        map3.put('P', '7');
        map3.put('Q', '7');
        map3.put(Character.valueOf(org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_RANDOM_REGULAR), '7');
        map3.put('S', '7');
        map3.put('T', '8');
        map3.put(Character.valueOf(org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_RANDOM_UT), '8');
        map3.put('V', '8');
        map3.put('W', '9');
        map3.put('X', '9');
        map3.put('Y', '9');
        map3.put(Character.valueOf(org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_ZERO), '9');
        Map<Character, Character> mapUnmodifiableMap = Collections.unmodifiableMap(map3);
        ALPHA_MAPPINGS = mapUnmodifiableMap;
        HashMap map4 = new HashMap(100);
        map4.putAll(mapUnmodifiableMap);
        map4.putAll(map2);
        ALPHA_PHONE_MAPPINGS = Collections.unmodifiableMap(map4);
        HashMap map5 = new HashMap();
        map5.putAll(map2);
        Character chValueOf = Character.valueOf(PLUS_SIGN);
        map5.put(chValueOf, chValueOf);
        Character chValueOf2 = Character.valueOf(STAR_SIGN);
        map5.put(chValueOf2, chValueOf2);
        map5.put('#', '#');
        DIALLABLE_CHAR_MAPPINGS = Collections.unmodifiableMap(map5);
        HashMap map6 = new HashMap();
        Iterator<Character> it = mapUnmodifiableMap.keySet().iterator();
        while (it.hasNext()) {
            char cCharValue = it.next().charValue();
            map6.put(Character.valueOf(Character.toLowerCase(cCharValue)), Character.valueOf(cCharValue));
            map6.put(Character.valueOf(cCharValue), Character.valueOf(cCharValue));
        }
        map6.putAll(map2);
        map6.put('-', '-');
        map6.put((char) 65293, '-');
        map6.put((char) 8208, '-');
        map6.put((char) 8209, '-');
        map6.put((char) 8210, '-');
        map6.put((char) 8211, '-');
        map6.put((char) 8212, '-');
        map6.put((char) 8213, '-');
        map6.put((char) 8722, '-');
        map6.put('/', '/');
        map6.put((char) 65295, '/');
        map6.put(' ', ' ');
        map6.put((char) 12288, ' ');
        map6.put((char) 8288, ' ');
        map6.put('.', '.');
        map6.put((char) 65294, '.');
        ALL_PLUS_NUMBER_GROUPING_SYMBOLS = Collections.unmodifiableMap(map6);
        SINGLE_INTERNATIONAL_PREFIX = Pattern.compile("[\\d]+(?:[~⁓∼～][\\d]+)?");
        StringBuilder sb = new StringBuilder();
        Map<Character, Character> map7 = ALPHA_MAPPINGS;
        sb.append(Arrays.toString(map7.keySet().toArray()).replaceAll("[, \\[\\]]", ""));
        sb.append(Arrays.toString(map7.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", ""));
        String string = sb.toString();
        VALID_ALPHA = string;
        PLUS_CHARS_PATTERN = Pattern.compile("[+＋]+");
        SEPARATOR_PATTERN = Pattern.compile("[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～]+");
        CAPTURING_DIGIT_PATTERN = Pattern.compile("(\\p{Nd})");
        VALID_START_CHAR_PATTERN = Pattern.compile(VALID_START_CHAR);
        SECOND_NUMBER_START_PATTERN = Pattern.compile(SECOND_NUMBER_START);
        UNWANTED_END_CHAR_PATTERN = Pattern.compile(UNWANTED_END_CHARS);
        VALID_ALPHA_PHONE_PATTERN = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        String str = "\\p{Nd}{2}|[+＋]*+(?:[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*]*\\p{Nd}){3,}[-x‐-―−ー－-／  \u00ad\u200b\u2060\u3000()（）［］.\\[\\]/~⁓∼～*" + string + DIGITS + "]*";
        VALID_PHONE_NUMBER = str;
        String strC = c(",;xｘ#＃~～");
        EXTN_PATTERNS_FOR_PARSING = strC;
        EXTN_PATTERNS_FOR_MATCHING = c("xｘ#＃~～");
        EXTN_PATTERN = Pattern.compile("(?:" + strC + ")$", 66);
        VALID_PHONE_NUMBER_PATTERN = Pattern.compile(str + "(?:" + strC + ")?", 66);
        NON_DIGITS_PATTERN = Pattern.compile("(\\D+)");
        FIRST_GROUP_PATTERN = Pattern.compile("(\\$\\d)");
        FIRST_GROUP_ONLY_PREFIX_PATTERN = Pattern.compile("\\(?\\$1\\)?");
        instance = null;
    }

    private void A(CharSequence charSequence, String str, boolean z6, boolean z10, m mVar) throws g {
        int iQ;
        if (charSequence == null) {
            throw new g(g.a.NOT_A_NUMBER, "The phone number supplied was null.");
        }
        if (charSequence.length() > 250) {
            throw new g(g.a.TOO_LONG, "The string supplied was too long to parse.");
        }
        StringBuilder sb = new StringBuilder();
        String string = charSequence.toString();
        a(string, sb);
        if (!p(sb)) {
            throw new g(g.a.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
        }
        if (z10 && !b(sb, str)) {
            throw new g(g.a.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
        }
        if (z6) {
            mVar.x(string);
        }
        String strR = r(sb);
        if (strR.length() > 0) {
            mVar.s(strR);
        }
        j jVarK = k(str);
        StringBuilder sb2 = new StringBuilder();
        try {
            iQ = q(sb, jVarK, sb2, z6, mVar);
        } catch (g e) {
            Matcher matcher = PLUS_CHARS_PATTERN.matcher(sb);
            if (e.a() != g.a.INVALID_COUNTRY_CODE || !matcher.lookingAt()) {
                throw new g(e.a(), e.getMessage());
            }
            iQ = q(sb.substring(matcher.end()), jVarK, sb2, z6, mVar);
            if (iQ == 0) {
                throw new g(g.a.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
            }
        }
        if (iQ != 0) {
            String strN = n(iQ);
            if (!strN.equals(str)) {
                jVarK = l(iQ, strN);
            }
        } else {
            sb2.append((CharSequence) u(sb));
            if (str != null) {
                mVar.q(jVarK.a());
            } else if (z6) {
                mVar.a();
            }
        }
        if (sb2.length() < 2) {
            throw new g(g.a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (jVarK != null) {
            StringBuilder sb3 = new StringBuilder();
            StringBuilder sb4 = new StringBuilder(sb2);
            t(sb4, jVarK, sb3);
            d dVarE = E(sb4, jVarK);
            if (dVarE != d.TOO_SHORT && dVarE != d.IS_POSSIBLE_LOCAL_ONLY && dVarE != d.INVALID_LENGTH) {
                if (z6 && sb3.length() > 0) {
                    mVar.w(sb3.toString());
                }
                sb2 = sb4;
            }
        }
        int length = sb2.length();
        if (length < 2) {
            throw new g(g.a.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
        }
        if (length > 17) {
            throw new g(g.a.TOO_LONG, "The string supplied is too long to be a phone number.");
        }
        D(sb2, mVar);
        mVar.u(Long.parseLong(sb2.toString()));
    }

    static synchronized void C(h hVar) {
        instance = hVar;
    }

    private d E(CharSequence charSequence, j jVar) {
        return F(charSequence, jVar, c.UNKNOWN);
    }

    private void a(String str, StringBuilder sb) {
        int iIndexOf = str.indexOf(RFC3966_PHONE_CONTEXT);
        if (iIndexOf >= 0) {
            int i10 = iIndexOf + 15;
            if (i10 < str.length() - 1 && str.charAt(i10) == '+') {
                int iIndexOf2 = str.indexOf(59, i10);
                if (iIndexOf2 > 0) {
                    sb.append(str.substring(i10, iIndexOf2));
                } else {
                    sb.append(str.substring(i10));
                }
            }
            int iIndexOf3 = str.indexOf(RFC3966_PREFIX);
            sb.append(str.substring(iIndexOf3 >= 0 ? iIndexOf3 + 4 : 0, iIndexOf));
        } else {
            sb.append(h(str));
        }
        int iIndexOf4 = sb.indexOf(RFC3966_ISDN_SUBADDRESS);
        if (iIndexOf4 > 0) {
            sb.delete(iIndexOf4, sb.length());
        }
    }

    private static String c(String str) {
        return ";ext=(\\p{Nd}{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|доб|[" + str + "]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*" + CAPTURING_EXTN_DIGITS + "#?|[- ]+(" + DIGITS + "{1,5})#";
    }

    public static h d(com.google.i18n.phonenumbers.c cVar) {
        if (cVar != null) {
            return e(new f(cVar));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    private static h e(e eVar) {
        if (eVar != null) {
            return new h(eVar, com.google.i18n.phonenumbers.b.a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    static CharSequence h(CharSequence charSequence) {
        Matcher matcher = VALID_START_CHAR_PATTERN.matcher(charSequence);
        if (!matcher.find()) {
            return "";
        }
        CharSequence charSequenceSubSequence = charSequence.subSequence(matcher.start(), charSequence.length());
        Matcher matcher2 = UNWANTED_END_CHAR_PATTERN.matcher(charSequenceSubSequence);
        if (matcher2.find()) {
            charSequenceSubSequence = charSequenceSubSequence.subSequence(0, matcher2.start());
        }
        Matcher matcher3 = SECOND_NUMBER_START_PATTERN.matcher(charSequenceSubSequence);
        return matcher3.find() ? charSequenceSubSequence.subSequence(0, matcher3.start()) : charSequenceSubSequence;
    }

    public static synchronized h i() {
        try {
            if (instance == null) {
                C(d(com.google.i18n.phonenumbers.d.DEFAULT_METADATA_LOADER));
            }
        } catch (Throwable th) {
            throw th;
        }
        return instance;
    }

    private j l(int i10, String str) {
        return REGION_CODE_FOR_NON_GEO_ENTITY.equals(str) ? j(i10) : k(str);
    }

    private boolean o(String str) {
        return str != null && this.supportedRegions.contains(str);
    }

    static StringBuilder u(StringBuilder sb) {
        if (VALID_ALPHA_PHONE_PATTERN.matcher(sb).matches()) {
            sb.replace(0, sb.length(), x(sb, ALPHA_PHONE_MAPPINGS, true));
        } else {
            sb.replace(0, sb.length(), w(sb));
        }
        return sb;
    }

    static StringBuilder v(CharSequence charSequence, boolean z6) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char cCharAt = charSequence.charAt(i10);
            int iDigit = Character.digit(cCharAt, 10);
            if (iDigit != -1) {
                sb.append(iDigit);
            } else if (z6) {
                sb.append(cCharAt);
            }
        }
        return sb;
    }

    private static String x(CharSequence charSequence, Map<Character, Character> map, boolean z6) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            char cCharAt = charSequence.charAt(i10);
            Character ch = map.get(Character.valueOf(Character.toUpperCase(cCharAt)));
            if (ch != null) {
                sb.append(ch);
            } else if (!z6) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    j j(int i10) {
        if (this.countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i10))) {
            return this.metadataSource.b(i10);
        }
        return null;
    }

    l m(j jVar, c cVar) {
        switch (a.$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType[cVar.ordinal()]) {
            case 1:
                return jVar.j();
            case 2:
                return jVar.l();
            case 3:
                return jVar.e();
            case 4:
            case 5:
                return jVar.b();
            case 6:
                return jVar.k();
            case 7:
                return jVar.o();
            case 8:
                return jVar.i();
            case 9:
                return jVar.h();
            case 10:
                return jVar.m();
            case 11:
                return jVar.n();
            default:
                return jVar.c();
        }
    }

    public String n(int i10) {
        List<String> list = this.countryCallingCodeToRegionCodeMap.get(Integer.valueOf(i10));
        return list == null ? UNKNOWN_REGION : list.get(0);
    }

    String r(StringBuilder sb) {
        Matcher matcher = EXTN_PATTERN.matcher(sb);
        if (!matcher.find() || !p(sb.substring(0, matcher.start()))) {
            return "";
        }
        int iGroupCount = matcher.groupCount();
        for (int i10 = 1; i10 <= iGroupCount; i10++) {
            if (matcher.group(i10) != null) {
                String strGroup = matcher.group(i10);
                sb.delete(matcher.start(), sb.length());
                return strGroup;
            }
        }
        return "";
    }

    public m y(CharSequence charSequence, String str) throws g {
        m mVar = new m();
        z(charSequence, str, mVar);
        return mVar;
    }

    h(e eVar, Map<Integer, List<String>> map) {
        this.metadataSource = eVar;
        this.countryCallingCodeToRegionCodeMap = map;
        for (Map.Entry<Integer, List<String>> entry : map.entrySet()) {
            List<String> value = entry.getValue();
            if (value.size() == 1 && REGION_CODE_FOR_NON_GEO_ENTITY.equals(value.get(0))) {
                this.countryCodesForNonGeographicalRegion.add(entry.getKey());
            } else {
                this.supportedRegions.addAll(value);
            }
        }
        if (this.supportedRegions.remove(REGION_CODE_FOR_NON_GEO_ENTITY)) {
            logger.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.nanpaRegions.addAll(map.get(1));
    }

    private boolean B(Pattern pattern, StringBuilder sb) {
        Matcher matcher = pattern.matcher(sb);
        if (!matcher.lookingAt()) {
            return false;
        }
        int iEnd = matcher.end();
        Matcher matcher2 = CAPTURING_DIGIT_PATTERN.matcher(sb.substring(iEnd));
        if (matcher2.find() && w(matcher2.group(1)).equals("0")) {
            return false;
        }
        sb.delete(0, iEnd);
        return true;
    }

    static void D(CharSequence charSequence, m mVar) {
        if (charSequence.length() > 1 && charSequence.charAt(0) == '0') {
            mVar.t(true);
            int i10 = 1;
            while (i10 < charSequence.length() - 1 && charSequence.charAt(i10) == '0') {
                i10++;
            }
            if (i10 != 1) {
                mVar.v(i10);
            }
        }
    }

    private d F(CharSequence charSequence, j jVar, c cVar) {
        List<Integer> listD;
        List<Integer> listD2;
        l lVarM = m(jVar, cVar);
        if (lVarM.d().isEmpty()) {
            listD = jVar.c().d();
        } else {
            listD = lVarM.d();
        }
        List<Integer> listF = lVarM.f();
        if (cVar == c.FIXED_LINE_OR_MOBILE) {
            if (!f(m(jVar, c.FIXED_LINE))) {
                return F(charSequence, jVar, c.MOBILE);
            }
            l lVarM2 = m(jVar, c.MOBILE);
            if (f(lVarM2)) {
                ArrayList arrayList = new ArrayList(listD);
                if (lVarM2.d().size() == 0) {
                    listD2 = jVar.c().d();
                } else {
                    listD2 = lVarM2.d();
                }
                arrayList.addAll(listD2);
                Collections.sort(arrayList);
                if (listF.isEmpty()) {
                    listF = lVarM2.f();
                } else {
                    ArrayList arrayList2 = new ArrayList(listF);
                    arrayList2.addAll(lVarM2.f());
                    Collections.sort(arrayList2);
                    listF = arrayList2;
                }
                listD = arrayList;
            }
        }
        if (listD.get(0).intValue() == -1) {
            return d.INVALID_LENGTH;
        }
        int length = charSequence.length();
        if (listF.contains(Integer.valueOf(length))) {
            return d.IS_POSSIBLE_LOCAL_ONLY;
        }
        int iIntValue = listD.get(0).intValue();
        if (iIntValue == length) {
            return d.IS_POSSIBLE;
        }
        if (iIntValue > length) {
            return d.TOO_SHORT;
        }
        if (listD.get(listD.size() - 1).intValue() < length) {
            return d.TOO_LONG;
        }
        if (listD.subList(1, listD.size()).contains(Integer.valueOf(length))) {
            return d.IS_POSSIBLE;
        }
        return d.INVALID_LENGTH;
    }

    private boolean b(CharSequence charSequence, String str) {
        if (!o(str)) {
            if (charSequence == null || charSequence.length() == 0 || !PLUS_CHARS_PATTERN.matcher(charSequence).lookingAt()) {
                return false;
            }
            return true;
        }
        return true;
    }

    private static boolean f(l lVar) {
        if (lVar.c() != 1 || lVar.b(0) != -1) {
            return true;
        }
        return false;
    }

    static boolean p(CharSequence charSequence) {
        if (charSequence.length() < 2) {
            return false;
        }
        return VALID_PHONE_NUMBER_PATTERN.matcher(charSequence).matches();
    }

    int g(StringBuilder sb, StringBuilder sb2) {
        if (sb.length() != 0 && sb.charAt(0) != '0') {
            int length = sb.length();
            for (int i10 = 1; i10 <= 3 && i10 <= length; i10++) {
                int i11 = Integer.parseInt(sb.substring(0, i10));
                if (this.countryCallingCodeToRegionCodeMap.containsKey(Integer.valueOf(i11))) {
                    sb2.append(sb.substring(i10));
                    return i11;
                }
            }
        }
        return 0;
    }

    j k(String str) {
        if (!o(str)) {
            return null;
        }
        return this.metadataSource.a(str);
    }

    int q(CharSequence charSequence, j jVar, StringBuilder sb, boolean z6, m mVar) throws g {
        String strD;
        if (charSequence.length() == 0) {
            return 0;
        }
        StringBuilder sb2 = new StringBuilder(charSequence);
        if (jVar != null) {
            strD = jVar.d();
        } else {
            strD = "NonMatch";
        }
        m.a aVarS = s(sb2, strD);
        if (z6) {
            mVar.r(aVarS);
        }
        if (aVarS != m.a.FROM_DEFAULT_COUNTRY) {
            if (sb2.length() > 2) {
                int iG = g(sb2, sb);
                if (iG != 0) {
                    mVar.q(iG);
                    return iG;
                }
                throw new g(g.a.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
            }
            throw new g(g.a.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        }
        if (jVar != null) {
            int iA = jVar.a();
            String strValueOf = String.valueOf(iA);
            String string = sb2.toString();
            if (string.startsWith(strValueOf)) {
                StringBuilder sb3 = new StringBuilder(string.substring(strValueOf.length()));
                l lVarC = jVar.c();
                t(sb3, jVar, null);
                if ((!this.matcherApi.a(sb2, lVarC, false) && this.matcherApi.a(sb3, lVarC, false)) || E(sb2, jVar) == d.TOO_LONG) {
                    sb.append((CharSequence) sb3);
                    if (z6) {
                        mVar.r(m.a.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                    }
                    mVar.q(iA);
                    return iA;
                }
            }
        }
        mVar.q(0);
        return 0;
    }

    m.a s(StringBuilder sb, String str) {
        if (sb.length() == 0) {
            return m.a.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = PLUS_CHARS_PATTERN.matcher(sb);
        if (matcher.lookingAt()) {
            sb.delete(0, matcher.end());
            u(sb);
            return m.a.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern patternA = this.regexCache.a(str);
        u(sb);
        if (B(patternA, sb)) {
            return m.a.FROM_NUMBER_WITH_IDD;
        }
        return m.a.FROM_DEFAULT_COUNTRY;
    }

    boolean t(StringBuilder sb, j jVar, StringBuilder sb2) {
        int length = sb.length();
        String strF = jVar.f();
        if (length != 0 && strF.length() != 0) {
            Matcher matcher = this.regexCache.a(strF).matcher(sb);
            if (matcher.lookingAt()) {
                l lVarC = jVar.c();
                boolean zA = this.matcherApi.a(sb, lVarC, false);
                int iGroupCount = matcher.groupCount();
                String strG = jVar.g();
                if (strG != null && strG.length() != 0 && matcher.group(iGroupCount) != null) {
                    StringBuilder sb3 = new StringBuilder(sb);
                    sb3.replace(0, length, matcher.replaceFirst(strG));
                    if (zA && !this.matcherApi.a(sb3.toString(), lVarC, false)) {
                        return false;
                    }
                    if (sb2 != null && iGroupCount > 1) {
                        sb2.append(matcher.group(1));
                    }
                    sb.replace(0, sb.length(), sb3.toString());
                    return true;
                }
                if (zA && !this.matcherApi.a(sb.substring(matcher.end()), lVarC, false)) {
                    return false;
                }
                if (sb2 != null && iGroupCount > 0 && matcher.group(iGroupCount) != null) {
                    sb2.append(matcher.group(1));
                }
                sb.delete(0, matcher.end());
                return true;
            }
        }
        return false;
    }
}
