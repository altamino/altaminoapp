package org.bouncycastle.pqc.crypto.newhope;

/* JADX INFO: loaded from: classes4.dex */
public class a extends org.bouncycastle.crypto.params.a {
    final short[] secData;

    public a(short[] sArr) {
        super(true);
        this.secData = org.bouncycastle.util.a.h(sArr);
    }

    public short[] a() {
        return org.bouncycastle.util.a.h(this.secData);
    }
}
