package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzbi extends zzaa.zza {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ zzaa.zzd zzbx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbi(zzaa.zzd zzdVar, Activity activity) {
        super(zzaa.this);
        this.zzbx = zzdVar;
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        zzaa.this.zzan.onActivityStopped(ObjectWrapper.wrap(this.val$activity), this.zzbs);
    }
}
