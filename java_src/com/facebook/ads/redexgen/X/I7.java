package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class I7 implements Callable<C0737My> {
    public final /* synthetic */ Context A00;
    public final /* synthetic */ I8 A01;

    public I7(I8 i8, Context context) {
        this.A01 = i8;
        this.A00 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C0737My call() {
        return new C0737My(this.A00);
    }
}
