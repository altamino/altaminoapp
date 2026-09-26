package c3;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.text.k;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.common.base.c;
import com.google.common.base.e;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends h {
    private static final char BOM_UTF16_BE = 65279;
    private static final char BOM_UTF16_LE = 65534;
    private static final int DEFAULT_COLOR = -1;
    private static final int DEFAULT_FONT_FACE = 0;
    private static final String DEFAULT_FONT_FAMILY = "sans-serif";
    private static final float DEFAULT_VERTICAL_PLACEMENT = 0.85f;
    private static final int FONT_FACE_BOLD = 1;
    private static final int FONT_FACE_ITALIC = 2;
    private static final int FONT_FACE_UNDERLINE = 4;
    private static final int SIZE_ATOM_HEADER = 8;
    private static final int SIZE_BOM_UTF16 = 2;
    private static final int SIZE_SHORT = 2;
    private static final int SIZE_STYLE_RECORD = 12;
    private static final int SPAN_PRIORITY_HIGH = 0;
    private static final int SPAN_PRIORITY_LOW = 16711680;
    private static final String TAG = "Tx3gDecoder";
    private static final String TX3G_SERIF = "Serif";
    private static final int TYPE_STYL = 1937013100;
    private static final int TYPE_TBOX = 1952608120;
    private final int calculatedVideoTrackHeight;
    private final boolean customVerticalPlacement;
    private final int defaultColorRgba;
    private final int defaultFontFace;
    private final String defaultFontFamily;
    private final float defaultVerticalPlacement;
    private final c0 parsableByteArray;

    public a(List<byte[]> list) {
        super(TAG);
        this.parsableByteArray = new c0();
        if (list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.defaultFontFace = 0;
            this.defaultColorRgba = -1;
            this.defaultFontFamily = "sans-serif";
            this.customVerticalPlacement = false;
            this.defaultVerticalPlacement = DEFAULT_VERTICAL_PLACEMENT;
            this.calculatedVideoTrackHeight = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.defaultFontFace = bArr[24];
        this.defaultColorRgba = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.defaultFontFamily = TX3G_SERIF.equals(o0.B(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i10 = bArr[25] * c.DC4;
        this.calculatedVideoTrackHeight = i10;
        boolean z6 = (bArr[0] & 32) != 0;
        this.customVerticalPlacement = z6;
        if (z6) {
            this.defaultVerticalPlacement = o0.o(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i10, 0.0f, 0.95f);
        } else {
            this.defaultVerticalPlacement = DEFAULT_VERTICAL_PLACEMENT;
        }
    }

    private static void A(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            int i15 = i14 | 33;
            boolean z6 = (i10 & 1) != 0;
            boolean z10 = (i10 & 2) != 0;
            if (z6) {
                if (z10) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i12, i13, i15);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i12, i13, i15);
                }
            } else if (z10) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i12, i13, i15);
            }
            boolean z11 = (i10 & 4) != 0;
            if (z11) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i12, i13, i15);
            }
            if (z11 || z6 || z10) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i12, i13, i15);
        }
    }

    private static void B(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i10, i11, 16711713);
        }
    }

    private static void y(boolean z6) throws k {
        if (!z6) {
            throw new k("Unexpected subtitle format.");
        }
    }

    private static void z(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    @Override // com.google.android.exoplayer2.text.h
    protected i v(byte[] bArr, int i10, boolean z6) throws k {
        this.parsableByteArray.N(bArr, i10);
        String strC = C(this.parsableByteArray);
        if (strC.isEmpty()) {
            return b.EMPTY;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strC);
        A(spannableStringBuilder, this.defaultFontFace, 0, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        z(spannableStringBuilder, this.defaultColorRgba, -1, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        B(spannableStringBuilder, this.defaultFontFamily, 0, spannableStringBuilder.length());
        float fO = this.defaultVerticalPlacement;
        while (this.parsableByteArray.a() >= 8) {
            int iE = this.parsableByteArray.e();
            int iN = this.parsableByteArray.n();
            int iN2 = this.parsableByteArray.n();
            if (iN2 == TYPE_STYL) {
                y(this.parsableByteArray.a() >= 2);
                int iJ = this.parsableByteArray.J();
                for (int i11 = 0; i11 < iJ; i11++) {
                    x(this.parsableByteArray, spannableStringBuilder);
                }
            } else if (iN2 == TYPE_TBOX && this.customVerticalPlacement) {
                y(this.parsableByteArray.a() >= 2);
                fO = o0.o(this.parsableByteArray.J() / this.calculatedVideoTrackHeight, 0.0f, 0.95f);
            }
            this.parsableByteArray.P(iE + iN);
        }
        return new b(new com.google.android.exoplayer2.text.b.C0178b().o(spannableStringBuilder).h(fO, 0).i(0).a());
    }

    private static String C(c0 c0Var) throws k {
        boolean z6;
        char cG;
        if (c0Var.a() >= 2) {
            z6 = true;
        } else {
            z6 = false;
        }
        y(z6);
        int iJ = c0Var.J();
        if (iJ == 0) {
            return "";
        }
        if (c0Var.a() >= 2 && ((cG = c0Var.g()) == 65279 || cG == 65534)) {
            return c0Var.B(iJ, e.UTF_16);
        }
        return c0Var.B(iJ, e.UTF_8);
    }

    private void x(c0 c0Var, SpannableStringBuilder spannableStringBuilder) throws k {
        boolean z6;
        if (c0Var.a() >= 12) {
            z6 = true;
        } else {
            z6 = false;
        }
        y(z6);
        int iJ = c0Var.J();
        int iJ2 = c0Var.J();
        c0Var.Q(2);
        int iD = c0Var.D();
        c0Var.Q(1);
        int iN = c0Var.n();
        if (iJ2 > spannableStringBuilder.length()) {
            t.i(TAG, "Truncating styl end (" + iJ2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            iJ2 = spannableStringBuilder.length();
        }
        if (iJ >= iJ2) {
            t.i(TAG, "Ignoring styl with start (" + iJ + ") >= end (" + iJ2 + ").");
            return;
        }
        int i10 = iJ2;
        A(spannableStringBuilder, iD, this.defaultFontFace, iJ, i10, 0);
        z(spannableStringBuilder, iN, this.defaultColorRgba, iJ, i10, 0);
    }
}
