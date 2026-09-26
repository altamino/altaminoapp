package androidx.media3.extractor.text.tx3g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.common.base.c;
import com.google.common.base.e;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class Tx3gDecoder extends SimpleSubtitleDecoder {
    private static final int DEFAULT_COLOR = -1;
    private static final int DEFAULT_FONT_FACE = 0;
    private static final String DEFAULT_FONT_FAMILY = "sans-serif";
    private static final float DEFAULT_VERTICAL_PLACEMENT = 0.85f;
    private static final int FONT_FACE_BOLD = 1;
    private static final int FONT_FACE_ITALIC = 2;
    private static final int FONT_FACE_UNDERLINE = 4;
    private static final int SIZE_ATOM_HEADER = 8;
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
    private final ParsableByteArray parsableByteArray;

    public Tx3gDecoder(List<byte[]> list) {
        super(TAG);
        this.parsableByteArray = new ParsableByteArray();
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
        this.defaultFontFamily = TX3G_SERIF.equals(Util.F(bArr, 43, bArr.length - 43)) ? "serif" : "sans-serif";
        int i10 = bArr[25] * c.DC4;
        this.calculatedVideoTrackHeight = i10;
        boolean z6 = (bArr[0] & 32) != 0;
        this.customVerticalPlacement = z6;
        if (z6) {
            this.defaultVerticalPlacement = Util.p(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i10, 0.0f, 0.95f);
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

    private static void y(boolean z6) throws SubtitleDecoderException {
        if (!z6) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    private static void z(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) throws SubtitleDecoderException {
        this.parsableByteArray.S(bArr, i10);
        String strC = C(this.parsableByteArray);
        if (strC.isEmpty()) {
            return Tx3gSubtitle.EMPTY;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strC);
        A(spannableStringBuilder, this.defaultFontFace, 0, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        z(spannableStringBuilder, this.defaultColorRgba, -1, 0, spannableStringBuilder.length(), SPAN_PRIORITY_LOW);
        B(spannableStringBuilder, this.defaultFontFamily, 0, spannableStringBuilder.length());
        float fP = this.defaultVerticalPlacement;
        while (this.parsableByteArray.a() >= 8) {
            int iF = this.parsableByteArray.f();
            int iQ = this.parsableByteArray.q();
            int iQ2 = this.parsableByteArray.q();
            if (iQ2 == TYPE_STYL) {
                y(this.parsableByteArray.a() >= 2);
                int iN = this.parsableByteArray.N();
                for (int i11 = 0; i11 < iN; i11++) {
                    x(this.parsableByteArray, spannableStringBuilder);
                }
            } else if (iQ2 == TYPE_TBOX && this.customVerticalPlacement) {
                y(this.parsableByteArray.a() >= 2);
                fP = Util.p(this.parsableByteArray.N() / this.calculatedVideoTrackHeight, 0.0f, 0.95f);
            }
            this.parsableByteArray.U(iF + iQ);
        }
        return new Tx3gSubtitle(new Cue.Builder().o(spannableStringBuilder).h(fP, 0).i(0).a());
    }

    private static void B(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i10, i11, 16711713);
        }
    }

    private static String C(ParsableByteArray parsableByteArray) throws SubtitleDecoderException {
        boolean z6;
        if (parsableByteArray.a() >= 2) {
            z6 = true;
        } else {
            z6 = false;
        }
        y(z6);
        int iN = parsableByteArray.N();
        if (iN == 0) {
            return "";
        }
        int iF = parsableByteArray.f();
        Charset charsetP = parsableByteArray.P();
        int iF2 = iN - (parsableByteArray.f() - iF);
        if (charsetP == null) {
            charsetP = e.UTF_8;
        }
        return parsableByteArray.F(iF2, charsetP);
    }

    private void x(ParsableByteArray parsableByteArray, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        boolean z6;
        if (parsableByteArray.a() >= 12) {
            z6 = true;
        } else {
            z6 = false;
        }
        y(z6);
        int iN = parsableByteArray.N();
        int iN2 = parsableByteArray.N();
        parsableByteArray.V(2);
        int iH = parsableByteArray.H();
        parsableByteArray.V(1);
        int iQ = parsableByteArray.q();
        if (iN2 > spannableStringBuilder.length()) {
            Log.i(TAG, "Truncating styl end (" + iN2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            iN2 = spannableStringBuilder.length();
        }
        if (iN >= iN2) {
            Log.i(TAG, "Ignoring styl with start (" + iN + ") >= end (" + iN2 + ").");
            return;
        }
        int i10 = iN2;
        A(spannableStringBuilder, iH, this.defaultFontFace, iN, i10, 0);
        z(spannableStringBuilder, iQ, this.defaultColorRgba, iN, i10, 0);
    }
}
