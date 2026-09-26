package com.google.android.gms.auth.api.accounttransfer;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzan;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes10.dex */
class zzj extends zzan {
    final zzl zzb;

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zzd(Status status) {
        TaskCompletionSource taskCompletionSource = this.zzb.zzb;
        int i10 = AccountTransferClient.zza;
        taskCompletionSource.setException(new AccountTransferException(status));
    }

    public zzj(zzl zzlVar) {
        this.zzb = zzlVar;
    }
}
