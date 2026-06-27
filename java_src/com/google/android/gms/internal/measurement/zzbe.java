package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzaa;

/* loaded from: classes2.dex */
final class zzbe extends zzaa.zza {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ Bundle zzbw;
    private final /* synthetic */ zzaa.zzd zzbx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbe(zzaa.zzd zzdVar, Activity activity, Bundle bundle) {
        super(zzaa.this);
        this.zzbx = zzdVar;
        this.val$activity = activity;
        this.zzbw = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzaa.zza
    final void zzl() throws RemoteException {
        zzaa.this.zzan.onActivityCreated(ObjectWrapper.wrap(this.val$activity), this.zzbw, this.zzbs);
    }
}
