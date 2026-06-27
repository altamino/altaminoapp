package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;

/* loaded from: classes2.dex */
final class zzux implements ValueCallback<String> {
    private final /* synthetic */ zzuw zzbvr;

    zzux(zzuw zzuwVar) {
        this.zzbvr = zzuwVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        zzuw zzuwVar = this.zzbvr;
        zzuwVar.zzbvm.zza(zzuwVar.zzbvo, zzuwVar.zzbvp, str, zzuwVar.zzbvq);
    }
}
