package com.facebook.ads.redexgen.X;

import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hs, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0606Hs implements Callable<Boolean> {
    private final C0605Hr A00;
    public final /* synthetic */ C0607Ht A01;

    private CallableC0606Hs(C0607Ht c0607Ht, C0605Hr c0605Hr) {
        this.A01 = c0607Ht;
        this.A00 = c0605Hr;
    }

    public /* synthetic */ CallableC0606Hs(C0607Ht c0607Ht, C0605Hr c0605Hr, C0598Hk c0598Hk) {
        this(c0607Ht, c0605Hr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() {
        return Boolean.valueOf(this.A01.A07.A06(this.A00));
    }
}
