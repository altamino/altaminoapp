package com.google.android.gms.internal.ads;

import android.webkit.JavascriptInterface;

/* loaded from: classes2.dex */
final class zzajo {
    private final zzajt zzdbl;

    private zzajo(zzajt zzajtVar) {
        this.zzdbl = zzajtVar;
    }

    @JavascriptInterface
    public final void notify(String str) {
        this.zzdbl.zzcs(str);
    }
}
