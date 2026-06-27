package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzbj extends zzaa.zza {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ zzm zzaw;
    private final /* synthetic */ zzaa.zzd zzbx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbj(zzaa.zzd zzdVar, Activity activity, zzm zzmVar) {
        super(zzaa.this);
        this.zzbx = zzdVar;
        this.val$activity = activity;
        this.zzaw = zzmVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        zzaa.this.zzan.onActivitySaveInstanceState(ObjectWrapper.wrap(this.val$activity), this.zzaw, this.zzbs);
    }
}
