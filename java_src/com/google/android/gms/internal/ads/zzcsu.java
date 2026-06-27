package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcsu implements zzcuz<Bundle> {
    private final Bundle zzghd;

    public zzcsu(Bundle bundle) {
        this.zzghd = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        bundle.putBundle("content_info", this.zzghd);
    }
}
