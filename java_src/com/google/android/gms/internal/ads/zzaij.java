package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* loaded from: classes2.dex */
final class zzaij implements zzbal<zzaig, ParcelFileDescriptor> {
    private final /* synthetic */ zzaia zzday;

    zzaij(zzaii zzaiiVar, zzaia zzaiaVar) {
        this.zzday = zzaiaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final /* synthetic */ zzbbh<ParcelFileDescriptor> zzf(zzaig zzaigVar) throws Exception {
        zzbbr zzbbrVar = new zzbbr();
        zzaigVar.zza(this.zzday, new zzaik(this, zzbbrVar));
        return zzbbrVar;
    }
}
