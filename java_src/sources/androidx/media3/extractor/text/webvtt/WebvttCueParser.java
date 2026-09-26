package androidx.media3.extractor.text.webvtt;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class WebvttCueParser {
    private static final char CHAR_AMPERSAND = '&';
    private static final char CHAR_GREATER_THAN = '>';
    private static final char CHAR_LESS_THAN = '<';
    private static final char CHAR_SEMI_COLON = ';';
    private static final char CHAR_SLASH = '/';
    private static final char CHAR_SPACE = ' ';
    public static final Pattern CUE_HEADER_PATTERN = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern CUE_SETTING_PATTERN = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map<String, Integer> DEFAULT_BACKGROUND_COLORS;
    static final float DEFAULT_POSITION = 0.5f;
    private static final Map<String, Integer> DEFAULT_TEXT_COLORS;
    private static final String ENTITY_AMPERSAND = "amp";
    private static final String ENTITY_GREATER_THAN = "gt";
    private static final String ENTITY_LESS_THAN = "lt";
    private static final String ENTITY_NON_BREAK_SPACE = "nbsp";
    private static final int STYLE_BOLD = 1;
    private static final int STYLE_ITALIC = 2;
    private static final String TAG = "WebvttCueParser";
    private static final String TAG_BOLD = "b";
    private static final String TAG_CLASS = "c";
    private static final String TAG_ITALIC = "i";
    private static final String TAG_LANG = "lang";
    private static final String TAG_RUBY = "ruby";
    private static final String TAG_RUBY_TEXT = "rt";
    private static final String TAG_UNDERLINE = "u";
    private static final String TAG_VOICE = "v";
    private static final int TEXT_ALIGNMENT_CENTER = 2;
    private static final int TEXT_ALIGNMENT_END = 3;
    private static final int TEXT_ALIGNMENT_LEFT = 4;
    private static final int TEXT_ALIGNMENT_RIGHT = 5;
    private static final int TEXT_ALIGNMENT_START = 1;

    /* JADX INFO: Access modifiers changed from: private */
    static class Element {
        private static final Comparator<Element> BY_START_POSITION_ASC = new Comparator() { // from class: androidx.media3.extractor.text.webvtt.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return WebvttCueParser.Element.e((WebvttCueParser.Element) obj, (WebvttCueParser.Element) obj2);
            }
        };
        private final int endPosition;
        private final StartTag startTag;

        private Element(StartTag startTag, int i10) {
            this.startTag = startTag;
            this.endPosition = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(Element element, Element element2) {
            return Integer.compare(element.startTag.position, element2.startTag.position);
        }
    }

    private static final class StartTag {
        public final Set<String> classes;
        public final String name;
        public final int position;
        public final String voice;

        public static StartTag b() {
            return new StartTag("", 0, "", Collections.emptySet());
        }

        private StartTag(String str, int i10, String str2, Set<String> set) {
            this.position = i10;
            this.name = str;
            this.voice = str2;
            this.classes = set;
        }

        public static StartTag a(String str, int i10) {
            String str2;
            String strTrim = str.trim();
            Assertions.a(!strTrim.isEmpty());
            int iIndexOf = strTrim.indexOf(" ");
            if (iIndexOf == -1) {
                str2 = "";
            } else {
                String strTrim2 = strTrim.substring(iIndexOf).trim();
                strTrim = strTrim.substring(0, iIndexOf);
                str2 = strTrim2;
            }
            String[] strArrD1 = Util.d1(strTrim, "\\.");
            String str3 = strArrD1[0];
            HashSet hashSet = new HashSet();
            for (int i11 = 1; i11 < strArrD1.length; i11++) {
                hashSet.add(strArrD1[i11]);
            }
            return new StartTag(str3, i10, str2, hashSet);
        }
    }

    private static final class StyleMatch implements Comparable<StyleMatch> {
        public final int score;
        public final WebvttCssStyle style;

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(StyleMatch styleMatch) {
            return Integer.compare(this.score, styleMatch.score);
        }

        public StyleMatch(int i10, WebvttCssStyle webvttCssStyle) {
            this.score = i10;
            this.style = webvttCssStyle;
        }
    }

    private static final class WebvttCueInfoBuilder {
        public CharSequence text;
        public long startTimeUs = 0;
        public long endTimeUs = 0;
        public int textAlignment = 2;
        public float line = -3.4028235E38f;
        public int lineType = 1;
        public int lineAnchor = 0;
        public float position = -3.4028235E38f;
        public int positionAnchor = Integer.MIN_VALUE;
        public float size = 1.0f;
        public int verticalType = Integer.MIN_VALUE;

        private static float b(float f, int i10) {
            if (f != -3.4028235E38f && i10 == 0 && (f < 0.0f || f > 1.0f)) {
                return 1.0f;
            }
            if (f != -3.4028235E38f) {
                return f;
            }
            return i10 == 0 ? 1.0f : -3.4028235E38f;
        }

        @Nullable
        private static Layout.Alignment c(int i10) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return Layout.Alignment.ALIGN_CENTER;
                }
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            Log.i(WebvttCueParser.TAG, "Unknown textAlignment: " + i10);
                            return null;
                        }
                    }
                }
                return Layout.Alignment.ALIGN_OPPOSITE;
            }
            return Layout.Alignment.ALIGN_NORMAL;
        }

        private static float e(int i10) {
            if (i10 != 4) {
                return i10 != 5 ? 0.5f : 1.0f;
            }
            return 0.0f;
        }

        private static int f(int i10) {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 3) {
                return 2;
            }
            if (i10 != 4) {
                return i10 != 5 ? 1 : 2;
            }
            return 0;
        }

        private static float d(int i10, float f) {
            if (i10 == 0) {
                return 1.0f - f;
            }
            if (i10 == 1) {
                return f <= 0.5f ? f * 2.0f : (1.0f - f) * 2.0f;
            }
            if (i10 == 2) {
                return f;
            }
            throw new IllegalStateException(String.valueOf(i10));
        }

        public WebvttCueInfo a() {
            return new WebvttCueInfo(g().a(), this.startTimeUs, this.endTimeUs);
        }

        public Cue.Builder g() {
            float fE = this.position;
            if (fE == -3.4028235E38f) {
                fE = e(this.textAlignment);
            }
            int iF = this.positionAnchor;
            if (iF == Integer.MIN_VALUE) {
                iF = f(this.textAlignment);
            }
            Cue.Builder builderR = new Cue.Builder().p(c(this.textAlignment)).h(b(this.line, this.lineType), this.lineType).i(this.lineAnchor).k(fE).l(iF).n(Math.min(this.size, d(iF, fE))).r(this.verticalType);
            CharSequence charSequence = this.text;
            if (charSequence != null) {
                builderR.o(charSequence);
            }
            return builderR;
        }
    }

    private static int g(int i10, int i11, int i12) {
        if (i10 != -1) {
            return i10;
        }
        if (i11 != -1) {
            return i11;
        }
        if (i12 != -1) {
            return i12;
        }
        throw new IllegalArgumentException();
    }

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        DEFAULT_TEXT_COLORS = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        DEFAULT_BACKGROUND_COLORS = Collections.unmodifiableMap(map2);
    }

    private static void d(@Nullable String str, StartTag startTag, List<Element> list, SpannableStringBuilder spannableStringBuilder, List<WebvttCssStyle> list2) {
        int i10 = startTag.position;
        int length = spannableStringBuilder.length();
        String str2 = startTag.name;
        str2.hashCode();
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case "c":
                a(spannableStringBuilder, startTag.classes, i10, length);
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case "ruby":
                c(spannableStringBuilder, str, startTag, list, list2);
                break;
            default:
                return;
        }
        List<StyleMatch> listH = h(list2, str, startTag);
        for (int i11 = 0; i11 < listH.size(); i11++) {
            e(spannableStringBuilder, listH.get(i11).style, i10, length);
        }
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, WebvttCssStyle webvttCssStyle, int i10, int i11) {
        if (webvttCssStyle == null) {
            return;
        }
        if (webvttCssStyle.i() != -1) {
            SpanUtil.a(spannableStringBuilder, new StyleSpan(webvttCssStyle.i()), i10, i11, 33);
        }
        if (webvttCssStyle.l()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (webvttCssStyle.m()) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (webvttCssStyle.k()) {
            SpanUtil.a(spannableStringBuilder, new ForegroundColorSpan(webvttCssStyle.c()), i10, i11, 33);
        }
        if (webvttCssStyle.j()) {
            SpanUtil.a(spannableStringBuilder, new BackgroundColorSpan(webvttCssStyle.a()), i10, i11, 33);
        }
        if (webvttCssStyle.d() != null) {
            SpanUtil.a(spannableStringBuilder, new TypefaceSpan(webvttCssStyle.d()), i10, i11, 33);
        }
        int iF = webvttCssStyle.f();
        if (iF == 1) {
            SpanUtil.a(spannableStringBuilder, new AbsoluteSizeSpan((int) webvttCssStyle.e(), true), i10, i11, 33);
        } else if (iF == 2) {
            SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.e()), i10, i11, 33);
        } else if (iF == 3) {
            SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.e() / 100.0f), i10, i11, 33);
        }
        if (webvttCssStyle.b()) {
            spannableStringBuilder.setSpan(new HorizontalTextInVerticalContextSpan(), i10, i11, 33);
        }
    }

    private static int f(String str, int i10) {
        int iIndexOf = str.indexOf(62, i10);
        return iIndexOf == -1 ? str.length() : iIndexOf + 1;
    }

    private static List<StyleMatch> h(List<WebvttCssStyle> list, @Nullable String str, StartTag startTag) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            WebvttCssStyle webvttCssStyle = list.get(i10);
            int iH = webvttCssStyle.h(str, startTag.name, startTag.classes, startTag.voice);
            if (iH > 0) {
                arrayList.add(new StyleMatch(iH, webvttCssStyle));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    static Cue l(CharSequence charSequence) {
        WebvttCueInfoBuilder webvttCueInfoBuilder = new WebvttCueInfoBuilder();
        webvttCueInfoBuilder.text = charSequence;
        return webvttCueInfoBuilder.g().a();
    }

    @Nullable
    private static WebvttCueInfo n(@Nullable String str, Matcher matcher, ParsableByteArray parsableByteArray, List<WebvttCssStyle> list) {
        WebvttCueInfoBuilder webvttCueInfoBuilder = new WebvttCueInfoBuilder();
        try {
            webvttCueInfoBuilder.startTimeUs = WebvttParserUtil.d((String) Assertions.e(matcher.group(1)));
            webvttCueInfoBuilder.endTimeUs = WebvttParserUtil.d((String) Assertions.e(matcher.group(2)));
            p((String) Assertions.e(matcher.group(3)), webvttCueInfoBuilder);
            StringBuilder sb = new StringBuilder();
            String strS = parsableByteArray.s();
            while (!TextUtils.isEmpty(strS)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strS.trim());
                strS = parsableByteArray.s();
            }
            webvttCueInfoBuilder.text = q(str, sb.toString(), list);
            return webvttCueInfoBuilder.a();
        } catch (NumberFormatException unused) {
            Log.i(TAG, "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    static Cue.Builder o(String str) {
        WebvttCueInfoBuilder webvttCueInfoBuilder = new WebvttCueInfoBuilder();
        p(str, webvttCueInfoBuilder);
        return webvttCueInfoBuilder.g();
    }

    private static void p(String str, WebvttCueInfoBuilder webvttCueInfoBuilder) {
        Matcher matcher = CUE_SETTING_PATTERN.matcher(str);
        while (matcher.find()) {
            String str2 = (String) Assertions.e(matcher.group(1));
            String str3 = (String) Assertions.e(matcher.group(2));
            try {
                if ("line".equals(str2)) {
                    s(str3, webvttCueInfoBuilder);
                } else if ("align".equals(str2)) {
                    webvttCueInfoBuilder.textAlignment = v(str3);
                } else if ("position".equals(str2)) {
                    u(str3, webvttCueInfoBuilder);
                } else if ("size".equals(str2)) {
                    webvttCueInfoBuilder.size = WebvttParserUtil.c(str3);
                } else if ("vertical".equals(str2)) {
                    webvttCueInfoBuilder.verticalType = w(str3);
                } else {
                    Log.i(TAG, "Unknown cue setting " + str2 + ":" + str3);
                }
            } catch (NumberFormatException unused) {
                Log.i(TAG, "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    static SpannedString q(@Nullable String str, String str2, List<WebvttCssStyle> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < str2.length()) {
            char cCharAt = str2.charAt(i10);
            if (cCharAt == '&') {
                i10++;
                int iIndexOf = str2.indexOf(59, i10);
                int iIndexOf2 = str2.indexOf(32, i10);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    b(str2.substring(i10, iIndexOf), spannableStringBuilder);
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i10 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i10++;
            } else {
                int iF = i10 + 1;
                if (iF < str2.length()) {
                    boolean z6 = str2.charAt(iF) == '/';
                    iF = f(str2, iF);
                    int i11 = iF - 2;
                    boolean z10 = str2.charAt(i11) == '/';
                    int i12 = i10 + (z6 ? 2 : 1);
                    if (!z10) {
                        i11 = iF - 1;
                    }
                    String strSubstring = str2.substring(i12, i11);
                    if (!strSubstring.trim().isEmpty()) {
                        String strJ = j(strSubstring);
                        if (k(strJ)) {
                            if (z6) {
                                while (!arrayDeque.isEmpty()) {
                                    StartTag startTag = (StartTag) arrayDeque.pop();
                                    d(str, startTag, arrayList, spannableStringBuilder, list);
                                    if (arrayDeque.isEmpty()) {
                                        arrayList.clear();
                                    } else {
                                        arrayList.add(new Element(startTag, spannableStringBuilder.length()));
                                    }
                                    if (startTag.name.equals(strJ)) {
                                        break;
                                    }
                                }
                            } else if (!z10) {
                                arrayDeque.push(StartTag.a(strSubstring, spannableStringBuilder.length()));
                            }
                        }
                    }
                }
                i10 = iF;
            }
        }
        while (!arrayDeque.isEmpty()) {
            d(str, (StartTag) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
        }
        d(str, StartTag.b(), Collections.emptyList(), spannableStringBuilder, list);
        return SpannedString.valueOf(spannableStringBuilder);
    }

    private static void s(String str, WebvttCueInfoBuilder webvttCueInfoBuilder) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            webvttCueInfoBuilder.lineAnchor = r(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            webvttCueInfoBuilder.line = WebvttParserUtil.c(str);
            webvttCueInfoBuilder.lineType = 0;
        } else {
            webvttCueInfoBuilder.line = Integer.parseInt(str);
            webvttCueInfoBuilder.lineType = 1;
        }
    }

    private static void u(String str, WebvttCueInfoBuilder webvttCueInfoBuilder) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            webvttCueInfoBuilder.positionAnchor = t(str.substring(iIndexOf + 1));
            str = str.substring(0, iIndexOf);
        }
        webvttCueInfoBuilder.position = WebvttParserUtil.c(str);
    }

    private static void a(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i10, int i11) {
        for (String str : set) {
            Map<String, Integer> map = DEFAULT_TEXT_COLORS;
            if (map.containsKey(str)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(map.get(str).intValue()), i10, i11, 33);
            } else {
                Map<String, Integer> map2 = DEFAULT_BACKGROUND_COLORS;
                if (map2.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(map2.get(str).intValue()), i10, i11, 33);
                }
            }
        }
    }

    private static void b(String str, SpannableStringBuilder spannableStringBuilder) {
        str.hashCode();
        switch (str) {
            case "gt":
                spannableStringBuilder.append(CHAR_GREATER_THAN);
                break;
            case "lt":
                spannableStringBuilder.append(CHAR_LESS_THAN);
                break;
            case "amp":
                spannableStringBuilder.append(CHAR_AMPERSAND);
                break;
            case "nbsp":
                spannableStringBuilder.append(CHAR_SPACE);
                break;
            default:
                Log.i(TAG, "ignoring unsupported entity: '&" + str + ";'");
                break;
        }
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, @Nullable String str, StartTag startTag, List<Element> list, List<WebvttCssStyle> list2) {
        int i10 = i(list2, str, startTag);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, Element.BY_START_POSITION_ASC);
        int i11 = startTag.position;
        int length = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            if (TAG_RUBY_TEXT.equals(((Element) arrayList.get(i12)).startTag.name)) {
                Element element = (Element) arrayList.get(i12);
                int iG = g(i(list2, str, element.startTag), i10, 1);
                int i13 = element.startTag.position - length;
                int i14 = element.endPosition - length;
                CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i13, i14);
                spannableStringBuilder.delete(i13, i14);
                spannableStringBuilder.setSpan(new RubySpan(charSequenceSubSequence.toString(), iG), i11, i13, 33);
                length += charSequenceSubSequence.length();
                i11 = i13;
            }
        }
    }

    private static int i(List<WebvttCssStyle> list, @Nullable String str, StartTag startTag) {
        List<StyleMatch> listH = h(list, str, startTag);
        for (int i10 = 0; i10 < listH.size(); i10++) {
            WebvttCssStyle webvttCssStyle = listH.get(i10).style;
            if (webvttCssStyle.g() != -1) {
                return webvttCssStyle.g();
            }
        }
        return -1;
    }

    private static String j(String str) {
        String strTrim = str.trim();
        Assertions.a(!strTrim.isEmpty());
        return Util.e1(strTrim, "[ \\.]")[0];
    }

    private static boolean k(String str) {
        str.hashCode();
        switch (str) {
            case "b":
            case "c":
            case "i":
            case "u":
            case "v":
            case "rt":
            case "lang":
            case "ruby":
                return true;
            default:
                return false;
        }
    }

    @Nullable
    public static WebvttCueInfo m(ParsableByteArray parsableByteArray, List<WebvttCssStyle> list) {
        String strS = parsableByteArray.s();
        if (strS == null) {
            return null;
        }
        Pattern pattern = CUE_HEADER_PATTERN;
        Matcher matcher = pattern.matcher(strS);
        if (matcher.matches()) {
            return n(null, matcher, parsableByteArray, list);
        }
        String strS2 = parsableByteArray.s();
        if (strS2 == null) {
            return null;
        }
        Matcher matcher2 = pattern.matcher(strS2);
        if (!matcher2.matches()) {
            return null;
        }
        return n(strS.trim(), matcher2, parsableByteArray, list);
    }

    private static int r(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 1;
            case "end":
                return 2;
            case "start":
                return 0;
            default:
                Log.i(TAG, "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static int t(String str) {
        str.hashCode();
        switch (str) {
            case "line-left":
            case "start":
                return 0;
            case "center":
            case "middle":
                return 1;
            case "line-right":
            case "end":
                return 2;
            default:
                Log.i(TAG, "Invalid anchor value: " + str);
                return Integer.MIN_VALUE;
        }
    }

    private static int v(String str) {
        str.hashCode();
        switch (str) {
            case "center":
            case "middle":
                return 2;
            case "end":
                return 3;
            case "left":
                return 4;
            case "right":
                return 5;
            case "start":
                return 1;
            default:
                Log.i(TAG, "Invalid alignment value: " + str);
                return 2;
        }
    }

    private static int w(String str) {
        str.hashCode();
        if (!str.equals("lr")) {
            if (!str.equals("rl")) {
                Log.i(TAG, "Invalid 'vertical' value: " + str);
                return Integer.MIN_VALUE;
            }
            return 1;
        }
        return 2;
    }
}
