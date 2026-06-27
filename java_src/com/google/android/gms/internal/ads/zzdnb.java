package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
class zzdnb extends zzdna {
    protected final byte[] zzhcy;

    zzdnb(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.zzhcy = bArr;
    }

    protected int zzavr() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public byte zzfm(int i) {
        return this.zzhcy[i];
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    byte zzfn(int i) {
        return this.zzhcy[i];
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public int size() {
        return this.zzhcy.length;
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final zzdmr zzv(int i, int i2) {
        int iZzg = zzdmr.zzg(0, i2, size());
        if (iZzg == 0) {
            return zzdmr.zzhcr;
        }
        return new zzdmw(this.zzhcy, zzavr(), iZzg);
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    protected void zza(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzhcy, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    final void zza(zzdmq zzdmqVar) throws IOException {
        zzdmqVar.zzh(this.zzhcy, zzavr(), size());
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    protected final String zza(Charset charset) {
        return new String(this.zzhcy, zzavr(), size(), charset);
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final boolean zzavo() {
        int iZzavr = zzavr();
        return zzdrb.zzl(this.zzhcy, iZzavr, size() + iZzavr);
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdmr) || size() != ((zzdmr) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof zzdnb) {
            zzdnb zzdnbVar = (zzdnb) obj;
            int iZzavq = zzavq();
            int iZzavq2 = zzdnbVar.zzavq();
            if (iZzavq == 0 || iZzavq2 == 0 || iZzavq == iZzavq2) {
                return zza(zzdnbVar, 0, size());
            }
            return false;
        }
        return obj.equals(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdna
    final boolean zza(zzdmr zzdmrVar, int i, int i2) {
        if (i2 > zzdmrVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 > zzdmrVar.size()) {
            int size2 = zzdmrVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (zzdmrVar instanceof zzdnb) {
            zzdnb zzdnbVar = (zzdnb) zzdmrVar;
            byte[] bArr = this.zzhcy;
            byte[] bArr2 = zzdnbVar.zzhcy;
            int iZzavr = zzavr() + i2;
            int iZzavr2 = zzavr();
            int iZzavr3 = zzdnbVar.zzavr();
            while (iZzavr2 < iZzavr) {
                if (bArr[iZzavr2] != bArr2[iZzavr3]) {
                    return false;
                }
                iZzavr2++;
                iZzavr3++;
            }
            return true;
        }
        return zzdmrVar.zzv(0, i2).equals(zzv(0, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    protected final int zzf(int i, int i2, int i3) {
        return zzdod.zza(i, this.zzhcy, zzavr(), i3);
    }

    @Override // com.google.android.gms.internal.ads.zzdmr
    public final zzdnd zzavp() {
        return zzdnd.zzc(this.zzhcy, zzavr(), size(), true);
    }
}
