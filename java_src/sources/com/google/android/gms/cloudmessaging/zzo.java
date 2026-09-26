package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* JADX INFO: loaded from: classes10.dex */
final class zzo extends zzp<Void> {
    zzo(int i10, int i11, Bundle bundle) {
        super(i10, 2, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.zzp
    final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.cloudmessaging.zzp
    final void zza(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            zzd(null);
        } else {
            zzc(new zzq(4, "Invalid response to one way request", null));
        }
    }
}
