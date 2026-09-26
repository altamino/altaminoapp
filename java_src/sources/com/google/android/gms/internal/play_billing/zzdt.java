package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes10.dex */
class zzdt extends zzds {
    protected final byte[] zza;

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdw) || zzd() != ((zzdw) obj).zzd()) {
            return false;
        }
        if (zzd() == 0) {
            return true;
        }
        if (!(obj instanceof zzdt)) {
            return obj.equals(this);
        }
        zzdt zzdtVar = (zzdt) obj;
        int iZzk = zzk();
        int iZzk2 = zzdtVar.zzk();
        if (iZzk != 0 && iZzk2 != 0 && iZzk != iZzk2) {
            return false;
        }
        int iZzd = zzd();
        if (iZzd > zzdtVar.zzd()) {
            throw new IllegalArgumentException("Length too large: " + iZzd + zzd());
        }
        if (iZzd > zzdtVar.zzd()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + iZzd + ", " + zzdtVar.zzd());
        }
        byte[] bArr = this.zza;
        byte[] bArr2 = zzdtVar.zza;
        zzdtVar.zzc();
        int i10 = 0;
        int i11 = 0;
        while (i10 < iZzd) {
            if (bArr[i10] != bArr2[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    protected int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public int zzd() {
        return this.zza.length;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    protected final String zzg(Charset charset) {
        return new String(this.zza, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public byte zza(int i10) {
        return this.zza[i10];
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    byte zzb(int i10) {
        return this.zza[i10];
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    protected final int zze(int i10, int i11, int i12) {
        return zzfd.zzb(i10, this.zza, 0, i12);
    }

    zzdt(byte[] bArr) {
        bArr.getClass();
        this.zza = bArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public final zzdw zzf(int i10, int i11) {
        int iZzj = zzdw.zzj(0, i11, zzd());
        if (iZzj == 0) {
            return zzdw.zzb;
        }
        return new zzdq(this.zza, 0, iZzj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    final void zzh(zzdm zzdmVar) throws IOException {
        ((zzeb) zzdmVar).zzc(this.zza, 0, zzd());
    }

    @Override // com.google.android.gms.internal.play_billing.zzdw
    public final boolean zzi() {
        return zzhs.zze(this.zza, 0, zzd());
    }
}
