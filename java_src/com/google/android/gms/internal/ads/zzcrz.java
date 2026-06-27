package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcrz implements zzcva<Object> {
    private final String zzcig;
    private final String zzdlo;
    private final zzcxv zzfjp;
    private final zzbqe zzggn;
    private final zzcyi zzggo;

    public zzcrz(String str, String str2, zzbqe zzbqeVar, zzcyi zzcyiVar, zzcxv zzcxvVar) {
        this.zzdlo = str;
        this.zzcig = str2;
        this.zzggn = zzbqeVar;
        this.zzggo = zzcyiVar;
        this.zzfjp = zzcxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<Object> zzalm() {
        return zzbar.zzm(new zzcuz(this) { // from class: com.google.android.gms.internal.ads.zzcsa
            private final zzcrz zzggp;

            {
                this.zzggp = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcuz
            public final void zzt(Object obj) {
                this.zzggp.zzo((Bundle) obj);
            }
        });
    }

    final /* synthetic */ void zzo(Bundle bundle) {
        this.zzggn.zzf(this.zzfjp.zzghg);
        bundle.putBundle("quality_signals", this.zzggo.zzams());
        bundle.putString("seq_num", this.zzdlo);
        bundle.putString("session_id", this.zzcig);
    }
}
