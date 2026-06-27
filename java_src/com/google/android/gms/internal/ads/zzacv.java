package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzacv implements Callable<Void> {
    private final /* synthetic */ Context val$context;

    zzacv(Context context) {
        this.val$context = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        zzyt.zzpe().initialize(this.val$context);
        return null;
    }
}
