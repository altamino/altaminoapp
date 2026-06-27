package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrr;
import java.io.IOException;

/* loaded from: classes2.dex */
public class zzdrr<M extends zzdrr<M>> extends zzdrw {
    protected zzdrt zzhno;

    @Override // com.google.android.gms.internal.ads.zzdrw
    protected int zzor() {
        if (this.zzhno != null) {
            for (int i = 0; i < this.zzhno.size(); i++) {
                this.zzhno.zzhf(i).zzor();
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public void zza(zzdrp zzdrpVar) throws IOException {
        if (this.zzhno == null) {
            return;
        }
        for (int i = 0; i < this.zzhno.size(); i++) {
            this.zzhno.zzhf(i).zza(zzdrpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    /* renamed from: zzbal */
    public final /* synthetic */ zzdrw clone() throws CloneNotSupportedException {
        return (zzdrr) clone();
    }

    @Override // com.google.android.gms.internal.ads.zzdrw
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzdrr zzdrrVar = (zzdrr) super.clone();
        zzdrv.zza(this, zzdrrVar);
        return zzdrrVar;
    }
}
