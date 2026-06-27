package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* loaded from: classes2.dex */
public final class zzbm implements ServiceConnection {
    private final String packageName;
    final /* synthetic */ zzbl zzmf;

    zzbm(zzbl zzblVar, String str) {
        this.zzmf = zzblVar;
        this.packageName = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws IllegalStateException {
        if (iBinder == null) {
            this.zzmf.zzl.zzad().zzdd().zzaq("Install Referrer connection returned with null binder");
            return;
        }
        try {
            com.google.android.gms.internal.measurement.zze zzeVarZza = com.google.android.gms.internal.measurement.zzf.zza(iBinder);
            if (zzeVarZza == null) {
                this.zzmf.zzl.zzad().zzdd().zzaq("Install Referrer Service implementation was not found");
            } else {
                this.zzmf.zzl.zzad().zzdg().zzaq("Install Referrer Service connected");
                this.zzmf.zzl.zzac().zza(new zzbn(this, zzeVarZza, this));
            }
        } catch (Exception e) {
            this.zzmf.zzl.zzad().zzdd().zza("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) throws IllegalStateException {
        this.zzmf.zzl.zzad().zzdg().zzaq("Install Referrer Service disconnected");
    }
}
