package com.facebook.ads.redexgen.X;

import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0733Mu implements Callable<Boolean> {
    public final /* synthetic */ C0737My A00;

    private CallableC0733Mu(C0737My c0737My) {
        this.A00 = c0737My;
    }

    public /* synthetic */ CallableC0733Mu(C0737My c0737My, C0731Ms c0731Ms) {
        this(c0737My);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        return Boolean.valueOf(this.A00.A0K());
    }
}
