package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;

/* loaded from: classes2.dex */
public final class zzcpy implements AppEventListener {
    private zzzs zzgeq;

    public final synchronized void zzb(zzzs zzzsVar) {
        this.zzgeq = zzzsVar;
    }

    public final synchronized zzzs zzale() {
        return this.zzgeq;
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    public final synchronized void onAppEvent(String str, String str2) {
        if (this.zzgeq != null) {
            try {
                this.zzgeq.onAppEvent(str, str2);
            } catch (RemoteException e) {
                zzbad.zzd("Remote Exception at onAppEvent.", e);
            }
        }
    }
}
