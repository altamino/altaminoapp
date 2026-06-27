package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class zzcyi implements zzaws, zzbro {
    private final zzawu zzdsw;
    private final HashSet<zzawj> zzglq = new HashSet<>();
    private final Context zzlj;

    public zzcyi(Context context, zzawu zzawuVar) {
        this.zzlj = context;
        this.zzdsw = zzawuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final synchronized void onAdFailedToLoad(int i) {
        if (i != 3) {
            this.zzdsw.zzb(this.zzglq);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaws
    public final synchronized void zza(HashSet<zzawj> hashSet) {
        this.zzglq.clear();
        this.zzglq.addAll(hashSet);
    }

    public final Bundle zzams() {
        return this.zzdsw.zza(this.zzlj, this);
    }
}
