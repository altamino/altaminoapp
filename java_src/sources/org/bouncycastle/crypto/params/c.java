package org.bouncycastle.crypto.params;

/* JADX INFO: loaded from: classes11.dex */
public class c {
    private int counter;
    private byte[] seed;

    public c(byte[] bArr, int i10) {
        this.seed = org.bouncycastle.util.a.e(bArr);
        this.counter = i10;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (cVar.counter != this.counter) {
            return false;
        }
        return org.bouncycastle.util.a.a(this.seed, cVar.seed);
    }

    public int hashCode() {
        return this.counter ^ org.bouncycastle.util.a.m(this.seed);
    }
}
