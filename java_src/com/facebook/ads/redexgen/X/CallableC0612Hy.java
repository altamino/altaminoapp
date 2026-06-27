package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Hy, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0612Hy implements Callable<C0613Hz> {
    public final /* synthetic */ int A00;
    public final /* synthetic */ Context A01;
    public final /* synthetic */ I0 A02;

    public CallableC0612Hy(I0 i0, Context context, int i) {
        this.A02 = i0;
        this.A01 = context;
        this.A00 = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C0613Hz call() {
        return new C0613Hz(this.A01, this.A00);
    }
}
