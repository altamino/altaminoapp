package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;

@zzard
/* loaded from: classes2.dex */
public final class zzyf extends zzzt {
    private final AppEventListener zzbqp;

    public zzyf(AppEventListener appEventListener) {
        this.zzbqp = appEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzzs
    public final void onAppEvent(String str, String str2) {
        this.zzbqp.onAppEvent(str, str2);
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbqp;
    }
}
