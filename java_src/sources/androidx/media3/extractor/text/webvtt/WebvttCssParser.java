package androidx.media3.extractor.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.c;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
final class WebvttCssParser {
    private static final String PROPERTY_BGCOLOR = "background-color";
    private static final String PROPERTY_COLOR = "color";
    private static final String PROPERTY_FONT_FAMILY = "font-family";
    private static final String PROPERTY_FONT_SIZE = "font-size";
    private static final String PROPERTY_FONT_STYLE = "font-style";
    private static final String PROPERTY_FONT_WEIGHT = "font-weight";
    private static final String PROPERTY_RUBY_POSITION = "ruby-position";
    private static final String PROPERTY_TEXT_COMBINE_UPRIGHT = "text-combine-upright";
    private static final String PROPERTY_TEXT_DECORATION = "text-decoration";
    private static final String RULE_END = "}";
    private static final String RULE_START = "{";
    private static final String TAG = "WebvttCssParser";
    private static final String VALUE_ALL = "all";
    private static final String VALUE_BOLD = "bold";
    private static final String VALUE_DIGITS = "digits";
    private static final String VALUE_ITALIC = "italic";
    private static final String VALUE_OVER = "over";
    private static final String VALUE_UNDER = "under";
    private static final String VALUE_UNDERLINE = "underline";
    private static final Pattern VOICE_NAME_PATTERN = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern FONT_SIZE_PATTERN = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final ParsableByteArray styleInput = new ParsableByteArray();
    private final StringBuilder stringBuilder = new StringBuilder();

    private static String f(ParsableByteArray parsableByteArray, StringBuilder sb) {
        boolean z6 = false;
        sb.setLength(0);
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        while (iF < iG && !z6) {
            char c7 = (char) parsableByteArray.e()[iF];
            if ((c7 < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !((c7 >= '0' && c7 <= '9') || c7 == '#' || c7 == '-' || c7 == '.' || c7 == '_'))) {
                z6 = true;
            } else {
                iF++;
                sb.append(c7);
            }
        }
        parsableByteArray.V(iF - parsableByteArray.f());
        return sb.toString();
    }

    static void n(ParsableByteArray parsableByteArray) {
        while (true) {
            for (boolean z6 = true; parsableByteArray.a() > 0 && z6; z6 = false) {
                if (!c(parsableByteArray) && !b(parsableByteArray)) {
                }
            }
            return;
        }
    }

    private void a(WebvttCssStyle webvttCssStyle, String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = VOICE_NAME_PATTERN.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                webvttCssStyle.z((String) Assertions.e(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrD1 = Util.d1(str, "\\.");
        String str2 = strArrD1[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            webvttCssStyle.y(str2.substring(0, iIndexOf2));
            webvttCssStyle.x(str2.substring(iIndexOf2 + 1));
        } else {
            webvttCssStyle.y(str2);
        }
        if (strArrD1.length > 1) {
            webvttCssStyle.w((String[]) Util.Q0(strArrD1, 1, strArrD1.length));
        }
    }

    private static void e(String str, WebvttCssStyle webvttCssStyle) {
        Matcher matcher = FONT_SIZE_PATTERN.matcher(c.e(str));
        if (!matcher.matches()) {
            Log.i(TAG, "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) Assertions.e(matcher.group(2));
        str2.hashCode();
        switch (str2) {
            case "%":
                webvttCssStyle.t(3);
                break;
            case "em":
                webvttCssStyle.t(2);
                break;
            case "px":
                webvttCssStyle.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        webvttCssStyle.s(Float.parseFloat((String) Assertions.e(matcher.group(1))));
    }

    @Nullable
    private static String h(ParsableByteArray parsableByteArray, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z6 = false;
        while (!z6) {
            int iF = parsableByteArray.f();
            String strG = g(parsableByteArray, sb);
            if (strG == null) {
                return null;
            }
            if (RULE_END.equals(strG) || ";".equals(strG)) {
                parsableByteArray.U(iF);
                z6 = true;
            } else {
                sb2.append(strG);
            }
        }
        return sb2.toString();
    }

    public List<WebvttCssStyle> d(ParsableByteArray parsableByteArray) {
        this.stringBuilder.setLength(0);
        int iF = parsableByteArray.f();
        m(parsableByteArray);
        this.styleInput.S(parsableByteArray.e(), parsableByteArray.f());
        this.styleInput.U(iF);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strI = i(this.styleInput, this.stringBuilder);
            if (strI == null) {
                return arrayList;
            }
            if (!RULE_START.equals(g(this.styleInput, this.stringBuilder))) {
                return arrayList;
            }
            WebvttCssStyle webvttCssStyle = new WebvttCssStyle();
            a(webvttCssStyle, strI);
            String str = null;
            boolean z6 = false;
            while (!z6) {
                int iF2 = this.styleInput.f();
                String strG = g(this.styleInput, this.stringBuilder);
                boolean z10 = strG == null || RULE_END.equals(strG);
                if (!z10) {
                    this.styleInput.U(iF2);
                    j(this.styleInput, webvttCssStyle, this.stringBuilder);
                }
                str = strG;
                z6 = z10;
            }
            if (RULE_END.equals(str)) {
                arrayList.add(webvttCssStyle);
            }
        }
    }

    private static boolean b(ParsableByteArray parsableByteArray) {
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        byte[] bArrE = parsableByteArray.e();
        if (iF + 2 <= iG) {
            int i10 = iF + 1;
            if (bArrE[iF] == 47) {
                int i11 = iF + 2;
                if (bArrE[i10] != 42) {
                    return false;
                }
                while (true) {
                    int i12 = i11 + 1;
                    if (i12 < iG) {
                        if (((char) bArrE[i11]) == '*' && ((char) bArrE[i12]) == '/') {
                            i11 += 2;
                            iG = i11;
                        } else {
                            i11 = i12;
                        }
                    } else {
                        parsableByteArray.V(iG - parsableByteArray.f());
                        return true;
                    }
                }
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    private static boolean c(ParsableByteArray parsableByteArray) {
        char cK = k(parsableByteArray, parsableByteArray.f());
        if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r' && cK != ' ') {
            return false;
        }
        parsableByteArray.V(1);
        return true;
    }

    @Nullable
    static String g(ParsableByteArray parsableByteArray, StringBuilder sb) {
        n(parsableByteArray);
        if (parsableByteArray.a() == 0) {
            return null;
        }
        String strF = f(parsableByteArray, sb);
        if (!"".equals(strF)) {
            return strF;
        }
        return "" + ((char) parsableByteArray.H());
    }

    @Nullable
    private static String i(ParsableByteArray parsableByteArray, StringBuilder sb) {
        String strL;
        n(parsableByteArray);
        if (parsableByteArray.a() < 5 || !"::cue".equals(parsableByteArray.E(5))) {
            return null;
        }
        int iF = parsableByteArray.f();
        String strG = g(parsableByteArray, sb);
        if (strG == null) {
            return null;
        }
        if (RULE_START.equals(strG)) {
            parsableByteArray.U(iF);
            return "";
        }
        if ("(".equals(strG)) {
            strL = l(parsableByteArray);
        } else {
            strL = null;
        }
        if (!")".equals(g(parsableByteArray, sb))) {
            return null;
        }
        return strL;
    }

    private static void j(ParsableByteArray parsableByteArray, WebvttCssStyle webvttCssStyle, StringBuilder sb) {
        n(parsableByteArray);
        String strF = f(parsableByteArray, sb);
        if ("".equals(strF) || !":".equals(g(parsableByteArray, sb))) {
            return;
        }
        n(parsableByteArray);
        String strH = h(parsableByteArray, sb);
        if (strH != null && !"".equals(strH)) {
            int iF = parsableByteArray.f();
            String strG = g(parsableByteArray, sb);
            if (!";".equals(strG)) {
                if (RULE_END.equals(strG)) {
                    parsableByteArray.U(iF);
                } else {
                    return;
                }
            }
            if ("color".equals(strF)) {
                webvttCssStyle.q(ColorParser.b(strH));
                return;
            }
            if (PROPERTY_BGCOLOR.equals(strF)) {
                webvttCssStyle.n(ColorParser.b(strH));
                return;
            }
            boolean z6 = true;
            if (PROPERTY_RUBY_POSITION.equals(strF)) {
                if (VALUE_OVER.equals(strH)) {
                    webvttCssStyle.v(1);
                    return;
                } else {
                    if (VALUE_UNDER.equals(strH)) {
                        webvttCssStyle.v(2);
                        return;
                    }
                    return;
                }
            }
            if (PROPERTY_TEXT_COMBINE_UPRIGHT.equals(strF)) {
                if (!"all".equals(strH) && !strH.startsWith(VALUE_DIGITS)) {
                    z6 = false;
                }
                webvttCssStyle.p(z6);
                return;
            }
            if (PROPERTY_TEXT_DECORATION.equals(strF)) {
                if ("underline".equals(strH)) {
                    webvttCssStyle.A(true);
                    return;
                }
                return;
            }
            if (PROPERTY_FONT_FAMILY.equals(strF)) {
                webvttCssStyle.r(strH);
                return;
            }
            if (PROPERTY_FONT_WEIGHT.equals(strF)) {
                if ("bold".equals(strH)) {
                    webvttCssStyle.o(true);
                }
            } else if (PROPERTY_FONT_STYLE.equals(strF)) {
                if ("italic".equals(strH)) {
                    webvttCssStyle.u(true);
                }
            } else if (PROPERTY_FONT_SIZE.equals(strF)) {
                e(strH, webvttCssStyle);
            }
        }
    }

    private static char k(ParsableByteArray parsableByteArray, int i10) {
        return (char) parsableByteArray.e()[i10];
    }

    private static String l(ParsableByteArray parsableByteArray) {
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        boolean z6 = false;
        while (iF < iG && !z6) {
            int i10 = iF + 1;
            if (((char) parsableByteArray.e()[iF]) == ')') {
                z6 = true;
            } else {
                z6 = false;
            }
            iF = i10;
        }
        return parsableByteArray.E((iF - 1) - parsableByteArray.f()).trim();
    }

    static void m(ParsableByteArray parsableByteArray) {
        while (!TextUtils.isEmpty(parsableByteArray.s())) {
        }
    }
}
