package e9;

import org.bouncycastle.asn1.c0;
import org.bouncycastle.asn1.h0;
import org.bouncycastle.asn1.p;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.v1;
import org.bouncycastle.asn1.y1;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes7.dex */
public class m extends s {
    private final byte[] bdsState;
    private final int index;
    private final int maxIndex;
    private final byte[] publicSeed;
    private final byte[] root;
    private final byte[] secretKeyPRF;
    private final byte[] secretKeySeed;
    private final int version;

    public m(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.version = 0;
        this.index = i10;
        this.secretKeySeed = org.bouncycastle.util.a.e(bArr);
        this.secretKeyPRF = org.bouncycastle.util.a.e(bArr2);
        this.publicSeed = org.bouncycastle.util.a.e(bArr3);
        this.root = org.bouncycastle.util.a.e(bArr4);
        this.bdsState = org.bouncycastle.util.a.e(bArr5);
        this.maxIndex = -1;
    }

    public static m p(Object obj) {
        if (obj instanceof m) {
            return (m) obj;
        }
        if (obj != null) {
            return new m(c0.y(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        org.bouncycastle.asn1.g gVar = new org.bouncycastle.asn1.g();
        gVar.a(this.maxIndex >= 0 ? new p(1L) : new p(0L));
        org.bouncycastle.asn1.g gVar2 = new org.bouncycastle.asn1.g();
        gVar2.a(new p(this.index));
        gVar2.a(new r1(this.secretKeySeed));
        gVar2.a(new r1(this.secretKeyPRF));
        gVar2.a(new r1(this.publicSeed));
        gVar2.a(new r1(this.root));
        if (this.maxIndex >= 0) {
            gVar2.a(new y1(false, 0, (org.bouncycastle.asn1.f) new p(this.maxIndex)));
        }
        gVar.a(new v1(gVar2));
        gVar.a(new y1(true, 0, (org.bouncycastle.asn1.f) new r1(this.bdsState)));
        return new v1(gVar);
    }

    public byte[] j() {
        return org.bouncycastle.util.a.e(this.bdsState);
    }

    public int m() {
        return this.index;
    }

    public int q() {
        return this.maxIndex;
    }

    public byte[] r() {
        return org.bouncycastle.util.a.e(this.publicSeed);
    }

    public byte[] s() {
        return org.bouncycastle.util.a.e(this.root);
    }

    public byte[] t() {
        return org.bouncycastle.util.a.e(this.secretKeyPRF);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.e(this.secretKeySeed);
    }

    public int v() {
        return this.version;
    }

    public m(int i10, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, int i11) {
        this.version = 1;
        this.index = i10;
        this.secretKeySeed = org.bouncycastle.util.a.e(bArr);
        this.secretKeyPRF = org.bouncycastle.util.a.e(bArr2);
        this.publicSeed = org.bouncycastle.util.a.e(bArr3);
        this.root = org.bouncycastle.util.a.e(bArr4);
        this.bdsState = org.bouncycastle.util.a.e(bArr5);
        this.maxIndex = i11;
    }

    private m(c0 c0Var) {
        int iC;
        p pVarX = p.x(c0Var.z(0));
        if (!pVarX.A(0) && !pVarX.A(1)) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        this.version = pVarX.C();
        if (c0Var.size() != 2 && c0Var.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        c0 c0VarY = c0.y(c0Var.z(1));
        this.index = p.x(c0VarY.z(0)).C();
        this.secretKeySeed = org.bouncycastle.util.a.e(v.x(c0VarY.z(1)).z());
        this.secretKeyPRF = org.bouncycastle.util.a.e(v.x(c0VarY.z(2)).z());
        this.publicSeed = org.bouncycastle.util.a.e(v.x(c0VarY.z(3)).z());
        this.root = org.bouncycastle.util.a.e(v.x(c0VarY.z(4)).z());
        if (c0VarY.size() == 6) {
            h0 h0VarC = h0.C(c0VarY.z(5));
            if (h0VarC.F() != 0) {
                throw new IllegalArgumentException("unknown tag in XMSSPrivateKey");
            }
            iC = p.y(h0VarC, false).C();
        } else {
            if (c0VarY.size() != 5) {
                throw new IllegalArgumentException("keySeq should be 5 or 6 in length");
            }
            iC = -1;
        }
        this.maxIndex = iC;
        if (c0Var.size() == 3) {
            this.bdsState = org.bouncycastle.util.a.e(v.y(h0.C(c0Var.z(2)), true).z());
        } else {
            this.bdsState = null;
        }
    }
}
