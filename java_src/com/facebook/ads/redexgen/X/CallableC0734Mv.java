package com.facebook.ads.redexgen.X;

import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Mv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0734Mv implements Callable<Boolean> {
    private final String A00;
    public final /* synthetic */ C0737My A01;

    public CallableC0734Mv(C0737My c0737My, String str) {
        this.A01 = c0737My;
        this.A00 = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        return Boolean.valueOf(this.A01.A0N(this.A00));
    }
}
