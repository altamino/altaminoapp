package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes10.dex */
public class d extends s {
    private static f converter = new f();
    protected org.bouncycastle.math.ec.d f;

    public d(org.bouncycastle.math.ec.d dVar) {
        this.f = dVar;
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        return new r1(converter.b(this.f.m(), converter.a(this.f)));
    }
}
