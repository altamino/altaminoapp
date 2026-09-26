package com.google.android.exoplayer2.text.ttml;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import java.util.ArrayDeque;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class f {
    private static final String TAG = "TtmlRenderUtil";

    @Nullable
    public static g f(@Nullable g gVar, @Nullable String[] strArr, Map<String, g> map) {
        int i10 = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i10 < length) {
                    gVar2.a(map.get(strArr[i10]));
                    i10++;
                }
                return gVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return gVar.a(map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i10 < length2) {
                    gVar.a(map.get(strArr[i10]));
                    i10++;
                }
            }
        }
        return gVar;
    }

    static String b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    @Nullable
    private static d d(@Nullable d dVar, Map<String, g> map) {
        while (dVar != null) {
            g gVarF = f(dVar.style, dVar.l(), map);
            if (gVarF != null && gVarF.j() == 1) {
                return dVar;
            }
            dVar = dVar.parent;
        }
        return null;
    }

    @Nullable
    private static d e(d dVar, Map<String, g> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            d dVar2 = (d) arrayDeque.pop();
            g gVarF = f(dVar2.style, dVar2.l(), map);
            if (gVarF != null && gVarF.j() == 3) {
                return dVar2;
            }
            for (int iG = dVar2.g() - 1; iG >= 0; iG--) {
                arrayDeque.push(dVar2.f(iG));
            }
        }
        return null;
    }

    public static void a(Spannable spannable, int i10, int i11, g gVar, @Nullable d dVar, Map<String, g> map, int i12) {
        d dVarE;
        int i13;
        g gVarF;
        int i14;
        if (gVar.l() != -1) {
            spannable.setSpan(new StyleSpan(gVar.l()), i10, i11, 33);
        }
        if (gVar.s()) {
            spannable.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (gVar.t()) {
            spannable.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (gVar.q()) {
            a3.d.a(spannable, new ForegroundColorSpan(gVar.c()), i10, i11, 33);
        }
        if (gVar.p()) {
            a3.d.a(spannable, new BackgroundColorSpan(gVar.b()), i10, i11, 33);
        }
        if (gVar.d() != null) {
            a3.d.a(spannable, new TypefaceSpan(gVar.d()), i10, i11, 33);
        }
        if (gVar.o() != null) {
            b bVar = (b) com.google.android.exoplayer2.util.a.e(gVar.o());
            int i15 = bVar.markShape;
            if (i15 == -1) {
                if (i12 != 2 && i12 != 1) {
                    i15 = 1;
                } else {
                    i15 = 3;
                }
                i14 = 1;
            } else {
                i14 = bVar.markFill;
            }
            int i16 = bVar.position;
            if (i16 == -2) {
                i16 = 1;
            }
            a3.d.a(spannable, new a3.e(i15, i14, i16), i10, i11, 33);
        }
        int iJ = gVar.j();
        if (iJ != 2) {
            if (iJ == 3 || iJ == 4) {
                spannable.setSpan(new a(), i10, i11, 33);
            }
        } else {
            d dVarD = d(dVar, map);
            if (dVarD != null && (dVarE = e(dVarD, map)) != null) {
                if (dVarE.g() == 1 && dVarE.f(0).text != null) {
                    String str = (String) o0.j(dVarE.f(0).text);
                    g gVarF2 = f(dVarE.style, dVarE.l(), map);
                    if (gVarF2 != null) {
                        i13 = gVarF2.i();
                    } else {
                        i13 = -1;
                    }
                    if (i13 == -1 && (gVarF = f(dVarD.style, dVarD.l(), map)) != null) {
                        i13 = gVarF.i();
                    }
                    spannable.setSpan(new a3.c(str, i13), i10, i11, 33);
                } else {
                    t.f(TAG, "Skipping rubyText node without exactly one text child.");
                }
            }
        }
        if (gVar.n()) {
            a3.d.a(spannable, new a3.a(), i10, i11, 33);
        }
        int iF = gVar.f();
        if (iF != 1) {
            if (iF != 2) {
                if (iF == 3) {
                    a3.d.a(spannable, new RelativeSizeSpan(gVar.e() / 100.0f), i10, i11, 33);
                    return;
                }
                return;
            }
            a3.d.a(spannable, new RelativeSizeSpan(gVar.e()), i10, i11, 33);
            return;
        }
        a3.d.a(spannable, new AbsoluteSizeSpan((int) gVar.e(), true), i10, i11, 33);
    }

    static void c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length >= 0 && spannableStringBuilder.charAt(length) != '\n') {
            spannableStringBuilder.append('\n');
        }
    }
}
