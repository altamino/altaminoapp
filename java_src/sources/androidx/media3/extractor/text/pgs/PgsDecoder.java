package androidx.media3.extractor.text.pgs;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.SimpleSubtitleDecoder;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class PgsDecoder extends SimpleSubtitleDecoder {
    private static final byte INFLATE_HEADER = 120;
    private static final int SECTION_TYPE_BITMAP_PICTURE = 21;
    private static final int SECTION_TYPE_END = 128;
    private static final int SECTION_TYPE_IDENTIFIER = 22;
    private static final int SECTION_TYPE_PALETTE = 20;
    private final ParsableByteArray buffer;
    private final CueBuilder cueBuilder;
    private final ParsableByteArray inflatedBuffer;

    @Nullable
    private Inflater inflater;

    private static final class CueBuilder {
        private int bitmapHeight;
        private int bitmapWidth;
        private int bitmapX;
        private int bitmapY;
        private boolean colorsSet;
        private int planeHeight;
        private int planeWidth;
        private final ParsableByteArray bitmapData = new ParsableByteArray();
        private final int[] colors = new int[256];

        /* JADX INFO: Access modifiers changed from: private */
        public void e(ParsableByteArray parsableByteArray, int i10) {
            int iK;
            if (i10 < 4) {
                return;
            }
            parsableByteArray.V(3);
            int i11 = i10 - 4;
            if ((parsableByteArray.H() & 128) != 0) {
                if (i11 < 7 || (iK = parsableByteArray.K()) < 4) {
                    return;
                }
                this.bitmapWidth = parsableByteArray.N();
                this.bitmapHeight = parsableByteArray.N();
                this.bitmapData.Q(iK - 4);
                i11 = i10 - 11;
            }
            int iF = this.bitmapData.f();
            int iG = this.bitmapData.g();
            if (iF >= iG || i11 <= 0) {
                return;
            }
            int iMin = Math.min(i11, iG - iF);
            parsableByteArray.l(this.bitmapData.e(), iF, iMin);
            this.bitmapData.U(iF + iMin);
        }

        public void h() {
            this.planeWidth = 0;
            this.planeHeight = 0;
            this.bitmapX = 0;
            this.bitmapY = 0;
            this.bitmapWidth = 0;
            this.bitmapHeight = 0;
            this.bitmapData.Q(0);
            this.colorsSet = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(ParsableByteArray parsableByteArray, int i10) {
            if (i10 < 19) {
                return;
            }
            this.planeWidth = parsableByteArray.N();
            this.planeHeight = parsableByteArray.N();
            parsableByteArray.V(11);
            this.bitmapX = parsableByteArray.N();
            this.bitmapY = parsableByteArray.N();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(ParsableByteArray parsableByteArray, int i10) {
            if (i10 % 5 != 2) {
                return;
            }
            parsableByteArray.V(2);
            Arrays.fill(this.colors, 0);
            int i11 = i10 / 5;
            for (int i12 = 0; i12 < i11; i12++) {
                int iH = parsableByteArray.H();
                int iH2 = parsableByteArray.H();
                int iH3 = parsableByteArray.H();
                int iH4 = parsableByteArray.H();
                double d = iH2;
                double d2 = iH3 - 128;
                double d6 = iH4 - 128;
                this.colors[iH] = (Util.q((int) ((d - (0.34414d * d6)) - (d2 * 0.71414d)), 0, 255) << 8) | (parsableByteArray.H() << 24) | (Util.q((int) ((1.402d * d2) + d), 0, 255) << 16) | Util.q((int) (d + (d6 * 1.772d)), 0, 255);
            }
            this.colorsSet = true;
        }

        @Nullable
        public Cue d() {
            int iH;
            if (this.planeWidth == 0 || this.planeHeight == 0 || this.bitmapWidth == 0 || this.bitmapHeight == 0 || this.bitmapData.g() == 0 || this.bitmapData.f() != this.bitmapData.g() || !this.colorsSet) {
                return null;
            }
            this.bitmapData.U(0);
            int i10 = this.bitmapWidth * this.bitmapHeight;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int iH2 = this.bitmapData.H();
                if (iH2 != 0) {
                    iH = i11 + 1;
                    iArr[i11] = this.colors[iH2];
                } else {
                    int iH3 = this.bitmapData.H();
                    if (iH3 != 0) {
                        iH = ((iH3 & 64) == 0 ? iH3 & 63 : ((iH3 & 63) << 8) | this.bitmapData.H()) + i11;
                        Arrays.fill(iArr, i11, iH, (iH3 & 128) == 0 ? 0 : this.colors[this.bitmapData.H()]);
                    }
                }
                i11 = iH;
            }
            return new Cue.Builder().f(Bitmap.createBitmap(iArr, this.bitmapWidth, this.bitmapHeight, Bitmap.Config.ARGB_8888)).k(this.bitmapX / this.planeWidth).l(0).h(this.bitmapY / this.planeHeight, 0).i(0).n(this.bitmapWidth / this.planeWidth).g(this.bitmapHeight / this.planeHeight).a();
        }
    }

    public PgsDecoder() {
        super("PgsDecoder");
        this.buffer = new ParsableByteArray();
        this.inflatedBuffer = new ParsableByteArray();
        this.cueBuilder = new CueBuilder();
    }

    @Override // androidx.media3.extractor.text.SimpleSubtitleDecoder
    protected Subtitle v(byte[] bArr, int i10, boolean z6) throws SubtitleDecoderException {
        this.buffer.S(bArr, i10);
        x(this.buffer);
        this.cueBuilder.h();
        ArrayList arrayList = new ArrayList();
        while (this.buffer.a() >= 3) {
            Cue cueY = y(this.buffer, this.cueBuilder);
            if (cueY != null) {
                arrayList.add(cueY);
            }
        }
        return new PgsSubtitle(Collections.unmodifiableList(arrayList));
    }

    private void x(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.a() > 0 && parsableByteArray.j() == 120) {
            if (this.inflater == null) {
                this.inflater = new Inflater();
            }
            if (Util.y0(parsableByteArray, this.inflatedBuffer, this.inflater)) {
                parsableByteArray.S(this.inflatedBuffer.e(), this.inflatedBuffer.g());
            }
        }
    }

    @Nullable
    private static Cue y(ParsableByteArray parsableByteArray, CueBuilder cueBuilder) {
        int iG = parsableByteArray.g();
        int iH = parsableByteArray.H();
        int iN = parsableByteArray.N();
        int iF = parsableByteArray.f() + iN;
        Cue cueD = null;
        if (iF > iG) {
            parsableByteArray.U(iG);
            return null;
        }
        if (iH != 128) {
            switch (iH) {
                case 20:
                    cueBuilder.g(parsableByteArray, iN);
                    break;
                case 21:
                    cueBuilder.e(parsableByteArray, iN);
                    break;
                case 22:
                    cueBuilder.f(parsableByteArray, iN);
                    break;
            }
        } else {
            cueD = cueBuilder.d();
            cueBuilder.h();
        }
        parsableByteArray.U(iF);
        return cueD;
    }
}
