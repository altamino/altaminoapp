package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zzhm implements Serializable, Iterable<Byte> {
    public static final zzhm zza = new zzhw(zziz.zzb);
    private static final zzht zzb = new zzhz();
    private static final Comparator<zzhm> zzc = new zzho();
    private int zzd = 0;

    static zzhv zzc(int i10) {
        return new zzhv(i10);
    }

    public abstract boolean equals(Object obj);

    public abstract byte zza(int i10);

    protected final int zza() {
        return this.zzd;
    }

    public abstract zzhm zza(int i10, int i11);

    protected abstract String zza(Charset charset);

    abstract void zza(zzhn zzhnVar) throws IOException;

    abstract byte zzb(int i10);

    public abstract int zzb();

    protected abstract int zzb(int i10, int i11, int i12);

    public abstract boolean zzd();

    static /* synthetic */ int zza(byte b7) {
        return b7 & 255;
    }

    public final int hashCode() {
        int iZzb = this.zzd;
        if (iZzb == 0) {
            int iZzb2 = zzb();
            iZzb = zzb(iZzb2, 0, iZzb2);
            if (iZzb == 0) {
                iZzb = 1;
            }
            this.zzd = iZzb;
        }
        return iZzb;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzhp(this);
    }

    public final String toString() {
        String strZza;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzb());
        if (zzb() <= 50) {
            strZza = zzlw.zza(this);
        } else {
            strZza = zzlw.zza(zza(0, 47)) + "...";
        }
        objArr[2] = strZza;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public final String zzc() {
        return zzb() == 0 ? "" : zza(zziz.zza);
    }

    zzhm() {
    }

    static int zza(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
        }
        throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
    }

    public static zzhm zza(byte[] bArr, int i10, int i11) {
        zza(i10, i10 + i11, bArr.length);
        return new zzhw(zzb.zza(bArr, i10, i11));
    }

    public static zzhm zza(String str) {
        return new zzhw(str.getBytes(zziz.zza));
    }

    static zzhm zza(byte[] bArr) {
        return new zzhw(bArr);
    }
}
