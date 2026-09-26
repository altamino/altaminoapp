package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class f extends s {
    private byte[] b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    private byte[] f3215b2;
    private byte[][] invA1;
    private byte[][] invA2;
    private i9.a[] layers;
    private u oid;
    private p version;
    private byte[] vi;

    private f(c0 c0Var) {
        int i10 = 0;
        if (c0Var.z(0) instanceof p) {
            this.version = p.x(c0Var.z(0));
        } else {
            this.oid = u.B(c0Var.z(0));
        }
        c0 c0Var2 = (c0) c0Var.z(1);
        this.invA1 = new byte[c0Var2.size()][];
        for (int i11 = 0; i11 < c0Var2.size(); i11++) {
            this.invA1[i11] = ((v) c0Var2.z(i11)).z();
        }
        this.b1 = ((v) ((c0) c0Var.z(2)).z(0)).z();
        c0 c0Var3 = (c0) c0Var.z(3);
        this.invA2 = new byte[c0Var3.size()][];
        for (int i12 = 0; i12 < c0Var3.size(); i12++) {
            this.invA2[i12] = ((v) c0Var3.z(i12)).z();
        }
        this.f3215b2 = ((v) ((c0) c0Var.z(4)).z(0)).z();
        this.vi = ((v) ((c0) c0Var.z(5)).z(0)).z();
        c0 c0Var4 = (c0) c0Var.z(6);
        byte[][][][] bArr = new byte[c0Var4.size()][][][];
        byte[][][][] bArr2 = new byte[c0Var4.size()][][][];
        byte[][][] bArr3 = new byte[c0Var4.size()][][];
        byte[][] bArr4 = new byte[c0Var4.size()][];
        int i13 = 0;
        while (i13 < c0Var4.size()) {
            c0 c0Var5 = (c0) c0Var4.z(i13);
            c0 c0Var6 = (c0) c0Var5.z(i10);
            bArr[i13] = new byte[c0Var6.size()][][];
            for (int i14 = i10; i14 < c0Var6.size(); i14++) {
                c0 c0Var7 = (c0) c0Var6.z(i14);
                bArr[i13][i14] = new byte[c0Var7.size()][];
                for (int i15 = 0; i15 < c0Var7.size(); i15++) {
                    bArr[i13][i14][i15] = ((v) c0Var7.z(i15)).z();
                }
            }
            c0 c0Var8 = (c0) c0Var5.z(1);
            bArr2[i13] = new byte[c0Var8.size()][][];
            for (int i16 = 0; i16 < c0Var8.size(); i16++) {
                c0 c0Var9 = (c0) c0Var8.z(i16);
                bArr2[i13][i16] = new byte[c0Var9.size()][];
                for (int i17 = 0; i17 < c0Var9.size(); i17++) {
                    bArr2[i13][i16][i17] = ((v) c0Var9.z(i17)).z();
                }
            }
            c0 c0Var10 = (c0) c0Var5.z(2);
            bArr3[i13] = new byte[c0Var10.size()][];
            for (int i18 = 0; i18 < c0Var10.size(); i18++) {
                bArr3[i13][i18] = ((v) c0Var10.z(i18)).z();
            }
            bArr4[i13] = ((v) c0Var5.z(3)).z();
            i13++;
            i10 = 0;
        }
        int length = this.vi.length - 1;
        this.layers = new i9.a[length];
        int i19 = 0;
        while (i19 < length) {
            byte[] bArr5 = this.vi;
            int i20 = i19 + 1;
            this.layers[i19] = new i9.a(bArr5[i19], bArr5[i20], j9.a.f(bArr[i19]), j9.a.f(bArr2[i19]), j9.a.d(bArr3[i19]), j9.a.b(bArr4[i19]));
            i19 = i20;
        }
    }

    public static f p(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        org.bouncycastle.asn1.f fVar = this.version;
        if (fVar == null) {
            fVar = this.oid;
        }
        gVar.a(fVar);
        org.bouncycastle.asn1.g gVar2 = new org.bouncycastle.asn1.g();
        for (int i10 = 0; i10 < this.invA1.length; i10++) {
            gVar2.a(new r1(this.invA1[i10]));
        }
        gVar.a(new v1(gVar2));
        org.bouncycastle.asn1.g gVar3 = new org.bouncycastle.asn1.g();
        gVar3.a(new r1(this.b1));
        gVar.a(new v1(gVar3));
        org.bouncycastle.asn1.g gVar4 = new org.bouncycastle.asn1.g();
        for (int i11 = 0; i11 < this.invA2.length; i11++) {
            gVar4.a(new r1(this.invA2[i11]));
        }
        gVar.a(new v1(gVar4));
        org.bouncycastle.asn1.g gVar5 = new org.bouncycastle.asn1.g();
        gVar5.a(new r1(this.f3215b2));
        gVar.a(new v1(gVar5));
        org.bouncycastle.asn1.g gVar6 = new org.bouncycastle.asn1.g();
        gVar6.a(new r1(this.vi));
        gVar.a(new v1(gVar6));
        org.bouncycastle.asn1.g gVar7 = new org.bouncycastle.asn1.g();
        for (int i12 = 0; i12 < this.layers.length; i12++) {
            org.bouncycastle.asn1.g gVar8 = new org.bouncycastle.asn1.g();
            byte[][][] bArrE = j9.a.e(this.layers[i12].a());
            org.bouncycastle.asn1.g gVar9 = new org.bouncycastle.asn1.g();
            for (int i13 = 0; i13 < bArrE.length; i13++) {
                org.bouncycastle.asn1.g gVar10 = new org.bouncycastle.asn1.g();
                for (int i14 = 0; i14 < bArrE[i13].length; i14++) {
                    gVar10.a(new r1(bArrE[i13][i14]));
                }
                gVar9.a(new v1(gVar10));
            }
            gVar8.a(new v1(gVar9));
            byte[][][] bArrE2 = j9.a.e(this.layers[i12].b());
            org.bouncycastle.asn1.g gVar11 = new org.bouncycastle.asn1.g();
            for (int i15 = 0; i15 < bArrE2.length; i15++) {
                org.bouncycastle.asn1.g gVar12 = new org.bouncycastle.asn1.g();
                for (int i16 = 0; i16 < bArrE2[i15].length; i16++) {
                    gVar12.a(new r1(bArrE2[i15][i16]));
                }
                gVar11.a(new v1(gVar12));
            }
            gVar8.a(new v1(gVar11));
            byte[][] bArrC = j9.a.c(this.layers[i12].d());
            org.bouncycastle.asn1.g gVar13 = new org.bouncycastle.asn1.g();
            for (byte[] bArr : bArrC) {
                gVar13.a(new r1(bArr));
            }
            gVar8.a(new v1(gVar13));
            gVar8.a(new r1(j9.a.a(this.layers[i12].c())));
            gVar7.a(new v1(gVar8));
        }
        gVar.a(new v1(gVar7));
        return new v1(gVar);
    }

    public short[] j() {
        return j9.a.b(this.b1);
    }

    public short[] m() {
        return j9.a.b(this.f3215b2);
    }

    public short[][] q() {
        return j9.a.d(this.invA1);
    }

    public short[][] r() {
        return j9.a.d(this.invA2);
    }

    public i9.a[] s() {
        return this.layers;
    }

    public int[] t() {
        return j9.a.g(this.vi);
    }

    public f(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, i9.a[] aVarArr) {
        this.version = new p(1L);
        this.invA1 = j9.a.c(sArr);
        this.b1 = j9.a.a(sArr2);
        this.invA2 = j9.a.c(sArr3);
        this.f3215b2 = j9.a.a(sArr4);
        this.vi = j9.a.h(iArr);
        this.layers = aVarArr;
    }
}
