package androidx.media3.extractor.text.ttml;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.common.base.c;
import com.google.common.collect.d0;
import com.google.common.collect.f1;
import com.google.common.collect.h0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
final class TextEmphasis {
    public static final int MARK_SHAPE_AUTO = -1;
    public static final int POSITION_OUTSIDE = -2;
    public final int markFill;
    public final int markShape;
    public final int position;
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
    private static final d0<String> SINGLE_STYLE_VALUES = d0.z("auto", "none");
    private static final d0<String> MARK_SHAPE_VALUES = d0.A("dot", "sesame", "circle");
    private static final d0<String> MARK_FILL_VALUES = d0.z("filled", "open");
    private static final d0<String> POSITION_VALUES = d0.A("after", "before", "outside");

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Position {
    }

    @Nullable
    public static TextEmphasis a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String strE = c.e(str.trim());
        if (strE.isEmpty()) {
            return null;
        }
        return b(d0.u(TextUtils.split(strE, WHITESPACE_PATTERN)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    /* JADX WARN: Code duplicated, block: B:55:0x00df  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:66:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:68:0x0104  */
    /* JADX WARN: Code duplicated, block: B:69:0x0106  */
    /* JADX WARN: Code duplicated, block: B:71:0x0109 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x010b  */
    /* JADX WARN: Code duplicated, block: B:73:0x010d  */
    private static TextEmphasis b(d0<String> d0Var) {
        byte b7;
        int i10;
        int i11;
        String str;
        int iHashCode;
        String str2 = (String) h0.d(f1.e(POSITION_VALUES, d0Var), "outside");
        int iHashCode2 = str2.hashCode();
        int i12 = 2;
        byte b10 = 0;
        int i13 = -1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str2.equals("after")) {
                    b7 = 0;
                } else {
                    b7 = -1;
                }
            } else if (str2.equals("outside")) {
                b7 = 1;
            } else {
                b7 = -1;
            }
        } else if (str2.equals("before")) {
            b7 = 2;
        } else {
            b7 = -1;
        }
        if (b7 != 0) {
            i10 = b7 != 1 ? 1 : -2;
        } else {
            i10 = 2;
        }
        f1.e eVarE = f1.e(SINGLE_STYLE_VALUES, d0Var);
        if (!eVarE.isEmpty()) {
            String str3 = (String) eVarE.iterator().next();
            int iHashCode3 = str3.hashCode();
            if (iHashCode3 == 3005871) {
                str3.equals("auto");
            } else if (iHashCode3 == 3387192 && str3.equals("none")) {
                i13 = 0;
            }
            return new TextEmphasis(i13, 0, i10);
        }
        f1.e eVarE2 = f1.e(MARK_FILL_VALUES, d0Var);
        f1.e eVarE3 = f1.e(MARK_SHAPE_VALUES, d0Var);
        if (eVarE2.isEmpty() && eVarE3.isEmpty()) {
            return new TextEmphasis(-1, 0, i10);
        }
        String str4 = (String) h0.d(eVarE2, "filled");
        int iHashCode4 = str4.hashCode();
        if (iHashCode4 != -1274499742) {
            if (iHashCode4 == 3417674 && str4.equals("open")) {
                i11 = 2;
            }
            str = (String) h0.d(eVarE3, "circle");
            iHashCode = str.hashCode();
            if (iHashCode != -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode == 99657 || !str.equals("dot")) {
                        b10 = -1;
                    }
                } else if (str.equals("sesame")) {
                    b10 = 1;
                } else {
                    b10 = -1;
                }
            } else if (str.equals("circle")) {
                b10 = 2;
            } else {
                b10 = -1;
            }
            if (b10 != 0) {
                if (b10 != 1) {
                    i12 = 1;
                } else {
                    i12 = 3;
                }
            }
            return new TextEmphasis(i12, i11, i10);
        }
        str4.equals("filled");
        i11 = 1;
        str = (String) h0.d(eVarE3, "circle");
        iHashCode = str.hashCode();
        if (iHashCode != -1360216880) {
            if (iHashCode != -905816648) {
                if (iHashCode == 99657) {
                    b10 = -1;
                } else {
                    b10 = -1;
                }
            } else if (str.equals("sesame")) {
                b10 = 1;
            } else {
                b10 = -1;
            }
        } else if (str.equals("circle")) {
            b10 = 2;
        } else {
            b10 = -1;
        }
        if (b10 != 0) {
            if (b10 != 1) {
                i12 = 1;
            } else {
                i12 = 3;
            }
        }
        return new TextEmphasis(i12, i11, i10);
    }

    private TextEmphasis(int i10, int i11, int i12) {
        this.markShape = i10;
        this.markFill = i11;
        this.position = i12;
    }
}
