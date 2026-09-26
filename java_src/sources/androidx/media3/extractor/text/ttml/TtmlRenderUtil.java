package androidx.media3.extractor.text.ttml;

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
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.TextEmphasisSpan;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class TtmlRenderUtil {
    private static final String TAG = "TtmlRenderUtil";

    @Nullable
    public static TtmlStyle f(@Nullable TtmlStyle ttmlStyle, @Nullable String[] strArr, Map<String, TtmlStyle> map) {
        int i10 = 0;
        if (ttmlStyle == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                TtmlStyle ttmlStyle2 = new TtmlStyle();
                int length = strArr.length;
                while (i10 < length) {
                    ttmlStyle2.a(map.get(strArr[i10]));
                    i10++;
                }
                return ttmlStyle2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return ttmlStyle.a(map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i10 < length2) {
                    ttmlStyle.a(map.get(strArr[i10]));
                    i10++;
                }
            }
        }
        return ttmlStyle;
    }

    static String b(String str) {
        return str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    @Nullable
    private static TtmlNode d(@Nullable TtmlNode ttmlNode, Map<String, TtmlStyle> map) {
        while (ttmlNode != null) {
            TtmlStyle ttmlStyleF = f(ttmlNode.style, ttmlNode.l(), map);
            if (ttmlStyleF != null && ttmlStyleF.j() == 1) {
                return ttmlNode;
            }
            ttmlNode = ttmlNode.parent;
        }
        return null;
    }

    @Nullable
    private static TtmlNode e(TtmlNode ttmlNode, Map<String, TtmlStyle> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(ttmlNode);
        while (!arrayDeque.isEmpty()) {
            TtmlNode ttmlNode2 = (TtmlNode) arrayDeque.pop();
            TtmlStyle ttmlStyleF = f(ttmlNode2.style, ttmlNode2.l(), map);
            if (ttmlStyleF != null && ttmlStyleF.j() == 3) {
                return ttmlNode2;
            }
            for (int iG = ttmlNode2.g() - 1; iG >= 0; iG--) {
                arrayDeque.push(ttmlNode2.f(iG));
            }
        }
        return null;
    }

    private TtmlRenderUtil() {
    }

    public static void a(Spannable spannable, int i10, int i11, TtmlStyle ttmlStyle, @Nullable TtmlNode ttmlNode, Map<String, TtmlStyle> map, int i12) {
        TtmlNode ttmlNodeE;
        int i13;
        TtmlStyle ttmlStyleF;
        int i14;
        if (ttmlStyle.l() != -1) {
            spannable.setSpan(new StyleSpan(ttmlStyle.l()), i10, i11, 33);
        }
        if (ttmlStyle.s()) {
            spannable.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        if (ttmlStyle.t()) {
            spannable.setSpan(new UnderlineSpan(), i10, i11, 33);
        }
        if (ttmlStyle.q()) {
            SpanUtil.a(spannable, new ForegroundColorSpan(ttmlStyle.c()), i10, i11, 33);
        }
        if (ttmlStyle.p()) {
            SpanUtil.a(spannable, new BackgroundColorSpan(ttmlStyle.b()), i10, i11, 33);
        }
        if (ttmlStyle.d() != null) {
            SpanUtil.a(spannable, new TypefaceSpan(ttmlStyle.d()), i10, i11, 33);
        }
        if (ttmlStyle.o() != null) {
            TextEmphasis textEmphasis = (TextEmphasis) Assertions.e(ttmlStyle.o());
            int i15 = textEmphasis.markShape;
            if (i15 == -1) {
                if (i12 != 2 && i12 != 1) {
                    i15 = 1;
                } else {
                    i15 = 3;
                }
                i14 = 1;
            } else {
                i14 = textEmphasis.markFill;
            }
            int i16 = textEmphasis.position;
            if (i16 == -2) {
                i16 = 1;
            }
            SpanUtil.a(spannable, new TextEmphasisSpan(i15, i14, i16), i10, i11, 33);
        }
        int iJ = ttmlStyle.j();
        if (iJ != 2) {
            if (iJ == 3 || iJ == 4) {
                spannable.setSpan(new DeleteTextSpan(), i10, i11, 33);
            }
        } else {
            TtmlNode ttmlNodeD = d(ttmlNode, map);
            if (ttmlNodeD != null && (ttmlNodeE = e(ttmlNodeD, map)) != null) {
                if (ttmlNodeE.g() == 1 && ttmlNodeE.f(0).text != null) {
                    String str = (String) Util.j(ttmlNodeE.f(0).text);
                    TtmlStyle ttmlStyleF2 = f(ttmlNodeE.style, ttmlNodeE.l(), map);
                    if (ttmlStyleF2 != null) {
                        i13 = ttmlStyleF2.i();
                    } else {
                        i13 = -1;
                    }
                    if (i13 == -1 && (ttmlStyleF = f(ttmlNodeD.style, ttmlNodeD.l(), map)) != null) {
                        i13 = ttmlStyleF.i();
                    }
                    spannable.setSpan(new RubySpan(str, i13), i10, i11, 33);
                } else {
                    Log.f(TAG, "Skipping rubyText node without exactly one text child.");
                }
            }
        }
        if (ttmlStyle.n()) {
            SpanUtil.a(spannable, new HorizontalTextInVerticalContextSpan(), i10, i11, 33);
        }
        int iF = ttmlStyle.f();
        if (iF != 1) {
            if (iF != 2) {
                if (iF == 3) {
                    SpanUtil.a(spannable, new RelativeSizeSpan(ttmlStyle.e() / 100.0f), i10, i11, 33);
                    return;
                }
                return;
            }
            SpanUtil.a(spannable, new RelativeSizeSpan(ttmlStyle.e()), i10, i11, 33);
            return;
        }
        SpanUtil.a(spannable, new AbsoluteSizeSpan((int) ttmlStyle.e(), true), i10, i11, 33);
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
