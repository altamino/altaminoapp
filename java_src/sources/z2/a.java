package z2;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.text.k;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends h {
    private static final byte INFLATE_HEADER = 120;
    private static final int SECTION_TYPE_BITMAP_PICTURE = 21;
    private static final int SECTION_TYPE_END = 128;
    private static final int SECTION_TYPE_IDENTIFIER = 22;
    private static final int SECTION_TYPE_PALETTE = 20;
    private final c0 buffer;
    private final C0509a cueBuilder;
    private final c0 inflatedBuffer;

    @Nullable
    private Inflater inflater;

    /* JADX INFO: renamed from: z2.a$a, reason: collision with other inner class name */
    private static final class C0509a {
        private int bitmapHeight;
        private int bitmapWidth;
        private int bitmapX;
        private int bitmapY;
        private boolean colorsSet;
        private int planeHeight;
        private int planeWidth;
        private final c0 bitmapData = new c0();
        private final int[] colors = new int[256];

        /* JADX INFO: Access modifiers changed from: private */
        public void e(c0 c0Var, int i10) {
            int iG;
            if (i10 < 4) {
                return;
            }
            c0Var.Q(3);
            int i11 = i10 - 4;
            if ((c0Var.D() & 128) != 0) {
                if (i11 < 7 || (iG = c0Var.G()) < 4) {
                    return;
                }
                this.bitmapWidth = c0Var.J();
                this.bitmapHeight = c0Var.J();
                this.bitmapData.L(iG - 4);
                i11 = i10 - 11;
            }
            int iE = this.bitmapData.e();
            int iF = this.bitmapData.f();
            if (iE >= iF || i11 <= 0) {
                return;
            }
            int iMin = Math.min(i11, iF - iE);
            c0Var.j(this.bitmapData.d(), iE, iMin);
            this.bitmapData.P(iE + iMin);
        }

        public void h() {
            this.planeWidth = 0;
            this.planeHeight = 0;
            this.bitmapX = 0;
            this.bitmapY = 0;
            this.bitmapWidth = 0;
            this.bitmapHeight = 0;
            this.bitmapData.L(0);
            this.colorsSet = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(c0 c0Var, int i10) {
            if (i10 < 19) {
                return;
            }
            this.planeWidth = c0Var.J();
            this.planeHeight = c0Var.J();
            c0Var.Q(11);
            this.bitmapX = c0Var.J();
            this.bitmapY = c0Var.J();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(c0 c0Var, int i10) {
            if (i10 % 5 != 2) {
                return;
            }
            c0Var.Q(2);
            Arrays.fill(this.colors, 0);
            int i11 = i10 / 5;
            for (int i12 = 0; i12 < i11; i12++) {
                int iD = c0Var.D();
                int iD2 = c0Var.D();
                int iD3 = c0Var.D();
                int iD4 = c0Var.D();
                double d = iD2;
                double d2 = iD3 - 128;
                double d6 = iD4 - 128;
                this.colors[iD] = (o0.p((int) ((d - (0.34414d * d6)) - (d2 * 0.71414d)), 0, 255) << 8) | (c0Var.D() << 24) | (o0.p((int) ((1.402d * d2) + d), 0, 255) << 16) | o0.p((int) (d + (d6 * 1.772d)), 0, 255);
            }
            this.colorsSet = true;
        }

        @Nullable
        public com.google.android.exoplayer2.text.b d() {
            int iD;
            if (this.planeWidth == 0 || this.planeHeight == 0 || this.bitmapWidth == 0 || this.bitmapHeight == 0 || this.bitmapData.f() == 0 || this.bitmapData.e() != this.bitmapData.f() || !this.colorsSet) {
                return null;
            }
            this.bitmapData.P(0);
            int i10 = this.bitmapWidth * this.bitmapHeight;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int iD2 = this.bitmapData.D();
                if (iD2 != 0) {
                    iD = i11 + 1;
                    iArr[i11] = this.colors[iD2];
                } else {
                    int iD3 = this.bitmapData.D();
                    if (iD3 != 0) {
                        iD = ((iD3 & 64) == 0 ? iD3 & 63 : ((iD3 & 63) << 8) | this.bitmapData.D()) + i11;
                        Arrays.fill(iArr, i11, iD, (iD3 & 128) == 0 ? 0 : this.colors[this.bitmapData.D()]);
                    }
                }
                i11 = iD;
            }
            return new com.google.android.exoplayer2.text.b.C0178b().f(Bitmap.createBitmap(iArr, this.bitmapWidth, this.bitmapHeight, Bitmap.Config.ARGB_8888)).k(this.bitmapX / this.planeWidth).l(0).h(this.bitmapY / this.planeHeight, 0).i(0).n(this.bitmapWidth / this.planeWidth).g(this.bitmapHeight / this.planeHeight).a();
        }
    }

    public a() {
        super("PgsDecoder");
        this.buffer = new c0();
        this.inflatedBuffer = new c0();
        this.cueBuilder = new C0509a();
    }

    @Override // com.google.android.exoplayer2.text.h
    protected i v(byte[] bArr, int i10, boolean z6) throws k {
        this.buffer.N(bArr, i10);
        x(this.buffer);
        this.cueBuilder.h();
        ArrayList arrayList = new ArrayList();
        while (this.buffer.a() >= 3) {
            com.google.android.exoplayer2.text.b bVarY = y(this.buffer, this.cueBuilder);
            if (bVarY != null) {
                arrayList.add(bVarY);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }

    private void x(c0 c0Var) {
        if (c0Var.a() > 0 && c0Var.h() == 120) {
            if (this.inflater == null) {
                this.inflater = new Inflater();
            }
            if (o0.l0(c0Var, this.inflatedBuffer, this.inflater)) {
                c0Var.N(this.inflatedBuffer.d(), this.inflatedBuffer.f());
            }
        }
    }

    @Nullable
    private static com.google.android.exoplayer2.text.b y(c0 c0Var, C0509a c0509a) {
        int iF = c0Var.f();
        int iD = c0Var.D();
        int iJ = c0Var.J();
        int iE = c0Var.e() + iJ;
        com.google.android.exoplayer2.text.b bVarD = null;
        if (iE > iF) {
            c0Var.P(iF);
            return null;
        }
        if (iD != 128) {
            switch (iD) {
                case 20:
                    c0509a.g(c0Var, iJ);
                    break;
                case 21:
                    c0509a.e(c0Var, iJ);
                    break;
                case 22:
                    c0509a.f(c0Var, iJ);
                    break;
            }
        } else {
            bVarD = c0509a.d();
            c0509a.h();
        }
        c0Var.P(iE);
        return bVarD;
    }
}
