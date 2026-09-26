package i9;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    private short[][][] coeff_alpha;
    private short[][][] coeff_beta;
    private short[] coeff_eta;
    private short[][] coeff_gamma;
    private int oi;
    private int vi;
    private int viNext;

    public a(byte b7, byte b10, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        int i10 = b7 & 255;
        this.vi = i10;
        int i11 = b10 & 255;
        this.viNext = i11;
        this.oi = i11 - i10;
        this.coeff_alpha = sArr;
        this.coeff_beta = sArr2;
        this.coeff_gamma = sArr3;
        this.coeff_eta = sArr4;
    }

    public short[][][] a() {
        return this.coeff_alpha;
    }

    public short[][][] b() {
        return this.coeff_beta;
    }

    public short[] c() {
        return this.coeff_eta;
    }

    public short[][] d() {
        return this.coeff_gamma;
    }

    public int e() {
        return this.oi;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.vi == aVar.f() && this.viNext == aVar.g() && this.oi == aVar.e() && j9.a.k(this.coeff_alpha, aVar.a()) && j9.a.k(this.coeff_beta, aVar.b()) && j9.a.j(this.coeff_gamma, aVar.d()) && j9.a.i(this.coeff_eta, aVar.c());
    }

    public int f() {
        return this.vi;
    }

    public int g() {
        return this.viNext;
    }

    public int hashCode() {
        return (((((((((((this.vi * 37) + this.viNext) * 37) + this.oi) * 37) + org.bouncycastle.util.a.s(this.coeff_alpha)) * 37) + org.bouncycastle.util.a.s(this.coeff_beta)) * 37) + org.bouncycastle.util.a.r(this.coeff_gamma)) * 37) + org.bouncycastle.util.a.q(this.coeff_eta);
    }

    public a(int i10, int i11, SecureRandom secureRandom) {
        this.vi = i10;
        this.viNext = i11;
        int i12 = i11 - i10;
        this.oi = i12;
        int[] iArr = {i12, i12, i10};
        Class cls = Short.TYPE;
        this.coeff_alpha = (short[][][]) Array.newInstance((Class<?>) cls, iArr);
        int i13 = this.oi;
        int i14 = this.vi;
        this.coeff_beta = (short[][][]) Array.newInstance((Class<?>) cls, i13, i14, i14);
        this.coeff_gamma = (short[][]) Array.newInstance((Class<?>) cls, this.oi, this.viNext);
        int i15 = this.oi;
        this.coeff_eta = new short[i15];
        for (int i16 = 0; i16 < i15; i16++) {
            for (int i17 = 0; i17 < this.oi; i17++) {
                for (int i18 = 0; i18 < this.vi; i18++) {
                    this.coeff_alpha[i16][i17][i18] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i19 = 0; i19 < i15; i19++) {
            for (int i20 = 0; i20 < this.vi; i20++) {
                for (int i21 = 0; i21 < this.vi; i21++) {
                    this.coeff_beta[i19][i20][i21] = (short) (secureRandom.nextInt() & 255);
                }
            }
        }
        for (int i22 = 0; i22 < i15; i22++) {
            for (int i23 = 0; i23 < this.viNext; i23++) {
                this.coeff_gamma[i22][i23] = (short) (secureRandom.nextInt() & 255);
            }
        }
        for (int i24 = 0; i24 < i15; i24++) {
            this.coeff_eta[i24] = (short) (secureRandom.nextInt() & 255);
        }
    }
}
