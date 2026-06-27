package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
class zzdz extends zzdy {
    protected final byte[] zzacg;

    zzdz(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.zzacg = bArr;
    }

    protected int zzkg() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public byte zzr(int i) {
        return this.zzacg[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    byte zzs(int i) {
        return this.zzacg[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public int size() {
        return this.zzacg.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public final zzdp zza(int i, int i2) {
        int iZzb = zzdp.zzb(0, i2, size());
        if (iZzb == 0) {
            return zzdp.zzaby;
        }
        return new zzdu(this.zzacg, zzkg(), iZzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    final void zza(zzdo zzdoVar) throws IOException {
        zzdoVar.zza(this.zzacg, zzkg(), size());
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    protected final String zza(Charset charset) {
        return new String(this.zzacg, zzkg(), size(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public final boolean zzke() {
        int iZzkg = zzkg();
        return zzhy.zzf(this.zzacg, iZzkg, size() + iZzkg);
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdp) || size() != ((zzdp) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof zzdz) {
            zzdz zzdzVar = (zzdz) obj;
            int iZzkf = zzkf();
            int iZzkf2 = zzdzVar.zzkf();
            if (iZzkf == 0 || iZzkf2 == 0 || iZzkf == iZzkf2) {
                return zza(zzdzVar, 0, size());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzdy
    final boolean zza(zzdp zzdpVar, int i, int i2) {
        if (i2 > zzdpVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 > zzdpVar.size()) {
            int size2 = zzdpVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (zzdpVar instanceof zzdz) {
            zzdz zzdzVar = (zzdz) zzdpVar;
            byte[] bArr = this.zzacg;
            byte[] bArr2 = zzdzVar.zzacg;
            int iZzkg = zzkg() + i2;
            int iZzkg2 = zzkg();
            int iZzkg3 = zzdzVar.zzkg();
            while (iZzkg2 < iZzkg) {
                if (bArr[iZzkg2] != bArr2[iZzkg3]) {
                    return false;
                }
                iZzkg2++;
                iZzkg3++;
            }
            return true;
        }
        return zzdpVar.zza(0, i2).equals(zza(0, i2));
    }

    @Override // com.google.android.gms.internal.measurement.zzdp
    protected final int zza(int i, int i2, int i3) {
        return zzfb.zza(i, this.zzacg, zzkg(), i3);
    }
}
