package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.net.Socket;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0735Mw extends AnonymousClass27 {
    private final Socket A00;
    public final /* synthetic */ C0737My A01;

    public C0735Mw(C0737My c0737My, Socket socket) {
        this.A01 = c0737My;
        this.A00 = socket;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() throws IOException {
        this.A01.A0H(this.A00);
    }
}
