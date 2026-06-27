package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hu, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0608Hu implements Callable<C0610Hw> {
    public final /* synthetic */ Context A00;
    public final /* synthetic */ C0611Hx A01;

    public CallableC0608Hu(C0611Hx c0611Hx, Context context) {
        this.A01 = c0611Hx;
        this.A00 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C0610Hw call() {
        return new C0610Hw(this.A00);
    }
}
