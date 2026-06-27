package com.facebook.ads.redexgen.X;

import java.io.ByteArrayInputStream;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0722Mj implements InterfaceC0721Mi {
    private ByteArrayInputStream A00;
    private final byte[] A01;

    public C0722Mj(byte[] bArr) {
        this.A01 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final void A6Q(int i) throws C0727Mo {
        this.A00 = new ByteArrayInputStream(this.A01);
        this.A00.skip(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final void close() throws C0727Mo {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final int length() throws C0727Mo {
        return this.A01.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0721Mi
    public final int read(byte[] bArr) throws C0727Mo {
        return this.A00.read(bArr, 0, bArr.length);
    }
}
