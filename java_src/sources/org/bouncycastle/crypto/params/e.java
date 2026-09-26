package org.bouncycastle.crypto.params;

/* JADX INFO: loaded from: classes11.dex */
public class e {
    private int counter;
    private byte[] seed;
    private int usageIndex;

    public e(byte[] bArr, int i10) {
        this(bArr, i10, -1);
    }

    public int a() {
        return this.counter;
    }

    public byte[] b() {
        return org.bouncycastle.util.a.e(this.seed);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (eVar.counter != this.counter) {
            return false;
        }
        return org.bouncycastle.util.a.a(this.seed, eVar.seed);
    }

    public int hashCode() {
        return this.counter ^ org.bouncycastle.util.a.m(this.seed);
    }

    public e(byte[] bArr, int i10, int i11) {
        this.seed = org.bouncycastle.util.a.e(bArr);
        this.counter = i10;
        this.usageIndex = i11;
    }
}
