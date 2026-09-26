package org.bouncycastle.asn1.x9;

import org.bouncycastle.asn1.r1;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.v;
import org.bouncycastle.asn1.z;

/* JADX INFO: loaded from: classes10.dex */
public class c extends s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private org.bouncycastle.math.ec.c f3291c;
    private final v encoding;
    private org.bouncycastle.math.ec.f p;

    public c(org.bouncycastle.math.ec.c cVar, v vVar) {
        this(cVar, vVar.z());
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public z g() {
        return this.encoding;
    }

    public c(org.bouncycastle.math.ec.c cVar, byte[] bArr) {
        this.f3291c = cVar;
        this.encoding = new r1(org.bouncycastle.util.a.e(bArr));
    }

    public c(org.bouncycastle.math.ec.f fVar, boolean z6) {
        this.p = fVar.q();
        this.encoding = new r1(fVar.h(z6));
    }
}
