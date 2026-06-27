package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzccy implements zzbrx {
    private final zzams zzfsy;

    public zzccy(zzams zzamsVar) {
        this.zzfsy = zzamsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final void zzbp(Context context) {
        try {
            this.zzfsy.pause();
        } catch (RemoteException e) {
            zzbad.zzd("Nonagon: Can't invoke onPause for rewarded video.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final void zzbq(Context context) {
        try {
            this.zzfsy.resume();
            if (context != null) {
                this.zzfsy.zzr(ObjectWrapper.wrap(context));
            }
        } catch (RemoteException e) {
            zzbad.zzd("Nonagon: Can't invoke onResume for rewarded video.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final void zzbr(Context context) {
        try {
            this.zzfsy.destroy();
        } catch (RemoteException e) {
            zzbad.zzd("Nonagon: Can't invoke onDestroy for rewarded video.", e);
        }
    }
}
