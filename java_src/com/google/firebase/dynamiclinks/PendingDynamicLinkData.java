package com.google.firebase.dynamiclinks;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.dynamiclinks.internal.DynamicLinkData;

/* loaded from: classes2.dex */
public class PendingDynamicLinkData {
    private final DynamicLinkData zzi;

    @VisibleForTesting
    @KeepForSdk
    public PendingDynamicLinkData(DynamicLinkData dynamicLinkData) {
        if (dynamicLinkData == null) {
            this.zzi = null;
            return;
        }
        if (dynamicLinkData.getClickTimestamp() == 0) {
            dynamicLinkData.zza(DefaultClock.getInstance().currentTimeMillis());
        }
        this.zzi = dynamicLinkData;
    }

    @ShowFirstParty
    @KeepForSdk
    public Bundle getExtensions() {
        DynamicLinkData dynamicLinkData = this.zzi;
        if (dynamicLinkData == null) {
            return new Bundle();
        }
        return dynamicLinkData.zzf();
    }

    public Uri getLink() {
        String strZzd;
        DynamicLinkData dynamicLinkData = this.zzi;
        if (dynamicLinkData == null || (strZzd = dynamicLinkData.zzd()) == null) {
            return null;
        }
        return Uri.parse(strZzd);
    }

    public long getClickTimestamp() {
        DynamicLinkData dynamicLinkData = this.zzi;
        if (dynamicLinkData == null) {
            return 0L;
        }
        return dynamicLinkData.getClickTimestamp();
    }
}
