package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;

/* loaded from: classes.dex */
public class RtbSignalData {
    private final Bundle zzcgv;
    private final AdSize zzdh;
    private final MediationConfiguration zzeoc;
    private final Context zzlj;

    public RtbSignalData(Context context, MediationConfiguration mediationConfiguration, Bundle bundle, AdSize adSize) {
        this.zzlj = context;
        this.zzeoc = mediationConfiguration;
        this.zzcgv = bundle;
        this.zzdh = adSize;
    }

    public Context getContext() {
        return this.zzlj;
    }

    public MediationConfiguration getConfiguration() {
        return this.zzeoc;
    }

    public Bundle getNetworkExtras() {
        return this.zzcgv;
    }

    public AdSize getAdSize() {
        return this.zzdh;
    }
}
