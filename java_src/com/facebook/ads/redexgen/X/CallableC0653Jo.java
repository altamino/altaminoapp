package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jo, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class CallableC0653Jo implements Callable<Boolean> {
    public final /* synthetic */ Context A00;
    public final /* synthetic */ SharedPreferences A01;
    public final /* synthetic */ String A02;

    public CallableC0653Jo(Context context, SharedPreferences sharedPreferences, String str) {
        this.A00 = context;
        this.A01 = sharedPreferences;
        this.A02 = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        String unused = C0654Jp.A02 = C0654Jp.A02(this.A00, this.A00.getPackageName());
        this.A01.edit().putString(this.A02, C0654Jp.A02).apply();
        C0654Jp.A06.set(2);
        return true;
    }
}
