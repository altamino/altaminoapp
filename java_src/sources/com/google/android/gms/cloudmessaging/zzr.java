package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* JADX INFO: loaded from: classes10.dex */
final class zzr extends zzp<Bundle> {
    zzr(int i10, int i11, Bundle bundle) {
        super(i10, 1, bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.zzp
    final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.cloudmessaging.zzp
    final void zza(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        zzd(bundle2);
    }
}
