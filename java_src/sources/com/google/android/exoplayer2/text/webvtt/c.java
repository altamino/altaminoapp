package com.google.android.exoplayer2.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes10.dex */
final class c {
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
    private final c0 styleInput = new c0();
    private final StringBuilder stringBuilder = new StringBuilder();

    private static String f(c0 c0Var, StringBuilder sb) {
        boolean z6 = false;
        sb.setLength(0);
        int iE = c0Var.e();
        int iF = c0Var.f();
        while (iE < iF && !z6) {
            char c7 = (char) c0Var.d()[iE];
            if ((c7 < 'A' || c7 > 'Z') && ((c7 < 'a' || c7 > 'z') && !((c7 >= '0' && c7 <= '9') || c7 == '#' || c7 == '-' || c7 == '.' || c7 == '_'))) {
                z6 = true;
            } else {
                iE++;
                sb.append(c7);
            }
        }
        c0Var.Q(iE - c0Var.e());
        return sb.toString();
    }

    static void n(c0 c0Var) {
        while (true) {
            for (boolean z6 = true; c0Var.a() > 0 && z6; z6 = false) {
                if (!c(c0Var) && !b(c0Var)) {
                }
            }
            return;
        }
    }

    private void a(d dVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = VOICE_NAME_PATTERN.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                dVar.z((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrH0 = o0.H0(str, "\\.");
        String str2 = strArrH0[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            dVar.y(str2.substring(0, iIndexOf2));
            dVar.x(str2.substring(iIndexOf2 + 1));
        } else {
            dVar.y(str2);
        }
        if (strArrH0.length > 1) {
            dVar.w((String[]) o0.B0(strArrH0, 1, strArrH0.length));
        }
    }

    private static void e(String str, d dVar) {
        Matcher matcher = FONT_SIZE_PATTERN.matcher(com.google.common.base.c.e(str));
        if (!matcher.matches()) {
            t.i(TAG, "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(2));
        str2.hashCode();
        switch (str2) {
            case "%":
                dVar.t(3);
                break;
            case "em":
                dVar.t(2);
                break;
            case "px":
                dVar.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        dVar.s(Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))));
    }

    @Nullable
    private static String h(c0 c0Var, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z6 = false;
        while (!z6) {
            int iE = c0Var.e();
            String strG = g(c0Var, sb);
            if (strG == null) {
                return null;
            }
            if (RULE_END.equals(strG) || ";".equals(strG)) {
                c0Var.P(iE);
                z6 = true;
            } else {
                sb2.append(strG);
            }
        }
        return sb2.toString();
    }

    public List<d> d(c0 c0Var) {
        this.stringBuilder.setLength(0);
        int iE = c0Var.e();
        m(c0Var);
        this.styleInput.N(c0Var.d(), c0Var.e());
        this.styleInput.P(iE);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strI = i(this.styleInput, this.stringBuilder);
            if (strI == null) {
                return arrayList;
            }
            if (!RULE_START.equals(g(this.styleInput, this.stringBuilder))) {
                return arrayList;
            }
            d dVar = new d();
            a(dVar, strI);
            String str = null;
            boolean z6 = false;
            while (!z6) {
                int iE2 = this.styleInput.e();
                String strG = g(this.styleInput, this.stringBuilder);
                boolean z10 = strG == null || RULE_END.equals(strG);
                if (!z10) {
                    this.styleInput.P(iE2);
                    j(this.styleInput, dVar, this.stringBuilder);
                }
                str = strG;
                z6 = z10;
            }
            if (RULE_END.equals(str)) {
                arrayList.add(dVar);
            }
        }
    }

    private static boolean b(c0 c0Var) {
        int iE = c0Var.e();
        int iF = c0Var.f();
        byte[] bArrD = c0Var.d();
        if (iE + 2 <= iF) {
            int i10 = iE + 1;
            if (bArrD[iE] == 47) {
                int i11 = iE + 2;
                if (bArrD[i10] != 42) {
                    return false;
                }
                while (true) {
                    int i12 = i11 + 1;
                    if (i12 < iF) {
                        if (((char) bArrD[i11]) == '*' && ((char) bArrD[i12]) == '/') {
                            i11 += 2;
                            iF = i11;
                        } else {
                            i11 = i12;
                        }
                    } else {
                        c0Var.Q(iF - c0Var.e());
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

    private static boolean c(c0 c0Var) {
        char cK = k(c0Var, c0Var.e());
        if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r' && cK != ' ') {
            return false;
        }
        c0Var.Q(1);
        return true;
    }

    @Nullable
    static String g(c0 c0Var, StringBuilder sb) {
        n(c0Var);
        if (c0Var.a() == 0) {
            return null;
        }
        String strF = f(c0Var, sb);
        if (!"".equals(strF)) {
            return strF;
        }
        return "" + ((char) c0Var.D());
    }

    @Nullable
    private static String i(c0 c0Var, StringBuilder sb) {
        String strL;
        n(c0Var);
        if (c0Var.a() < 5 || !"::cue".equals(c0Var.A(5))) {
            return null;
        }
        int iE = c0Var.e();
        String strG = g(c0Var, sb);
        if (strG == null) {
            return null;
        }
        if (RULE_START.equals(strG)) {
            c0Var.P(iE);
            return "";
        }
        if ("(".equals(strG)) {
            strL = l(c0Var);
        } else {
            strL = null;
        }
        if (!")".equals(g(c0Var, sb))) {
            return null;
        }
        return strL;
    }

    private static void j(c0 c0Var, d dVar, StringBuilder sb) {
        n(c0Var);
        String strF = f(c0Var, sb);
        if ("".equals(strF) || !":".equals(g(c0Var, sb))) {
            return;
        }
        n(c0Var);
        String strH = h(c0Var, sb);
        if (strH != null && !"".equals(strH)) {
            int iE = c0Var.e();
            String strG = g(c0Var, sb);
            if (!";".equals(strG)) {
                if (RULE_END.equals(strG)) {
                    c0Var.P(iE);
                } else {
                    return;
                }
            }
            if ("color".equals(strF)) {
                dVar.q(com.google.android.exoplayer2.util.f.b(strH));
                return;
            }
            if (PROPERTY_BGCOLOR.equals(strF)) {
                dVar.n(com.google.android.exoplayer2.util.f.b(strH));
                return;
            }
            boolean z6 = true;
            if (PROPERTY_RUBY_POSITION.equals(strF)) {
                if (VALUE_OVER.equals(strH)) {
                    dVar.v(1);
                    return;
                } else {
                    if (VALUE_UNDER.equals(strH)) {
                        dVar.v(2);
                        return;
                    }
                    return;
                }
            }
            if (PROPERTY_TEXT_COMBINE_UPRIGHT.equals(strF)) {
                if (!"all".equals(strH) && !strH.startsWith(VALUE_DIGITS)) {
                    z6 = false;
                }
                dVar.p(z6);
                return;
            }
            if (PROPERTY_TEXT_DECORATION.equals(strF)) {
                if ("underline".equals(strH)) {
                    dVar.A(true);
                    return;
                }
                return;
            }
            if (PROPERTY_FONT_FAMILY.equals(strF)) {
                dVar.r(strH);
                return;
            }
            if (PROPERTY_FONT_WEIGHT.equals(strF)) {
                if ("bold".equals(strH)) {
                    dVar.o(true);
                }
            } else if (PROPERTY_FONT_STYLE.equals(strF)) {
                if ("italic".equals(strH)) {
                    dVar.u(true);
                }
            } else if (PROPERTY_FONT_SIZE.equals(strF)) {
                e(strH, dVar);
            }
        }
    }

    private static char k(c0 c0Var, int i10) {
        return (char) c0Var.d()[i10];
    }

    private static String l(c0 c0Var) {
        int iE = c0Var.e();
        int iF = c0Var.f();
        boolean z6 = false;
        while (iE < iF && !z6) {
            int i10 = iE + 1;
            if (((char) c0Var.d()[iE]) == ')') {
                z6 = true;
            } else {
                z6 = false;
            }
            iE = i10;
        }
        return c0Var.A((iE - 1) - c0Var.e()).trim();
    }

    static void m(c0 c0Var) {
        while (!TextUtils.isEmpty(c0Var.p())) {
        }
    }
}
