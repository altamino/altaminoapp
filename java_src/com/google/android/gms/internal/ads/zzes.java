package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzbp;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class zzes extends zzfk {
    public zzes(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2) {
        super(zzdyVar, str, str2, c0007zza, i, 24);
    }

    @Override // com.google.android.gms.internal.ads.zzfk, java.util.concurrent.Callable
    /* renamed from: zzcz */
    public final Void call() throws Exception {
        if (this.zzvd.isInitialized()) {
            return super.call();
        }
        if (!this.zzvd.zzcl()) {
            return null;
        }
        zzda();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws ExecutionException, IllegalAccessException, InterruptedException, TimeoutException, InvocationTargetException {
        if (this.zzvd.zzcl()) {
            zzda();
            return;
        }
        synchronized (this.zzzm) {
            this.zzzm.zzaf((String) this.zzzw.invoke(null, this.zzvd.getContext()));
        }
    }

    private final void zzda() throws ExecutionException, InterruptedException, TimeoutException {
        AdvertisingIdClient advertisingIdClientZzct = this.zzvd.zzct();
        if (advertisingIdClientZzct == null) {
            return;
        }
        try {
            AdvertisingIdClient.Info info = advertisingIdClientZzct.getInfo();
            String strZzap = zzef.zzap(info.getId());
            if (strZzap != null) {
                synchronized (this.zzzm) {
                    this.zzzm.zzaf(strZzap);
                    this.zzzm.zzb(info.isLimitAdTrackingEnabled());
                    this.zzzm.zzb(zzbp.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                }
            }
        } catch (IOException unused) {
        }
    }
}
