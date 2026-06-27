package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class zzdp implements Serializable, Iterable<Byte> {
    public static final zzdp zzaby = new zzdz(zzfb.zzahk);
    private static final zzdv zzabz;
    private static final Comparator<zzdp> zzacb;
    private int zzaca = 0;

    zzdp() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zza(byte b) {
        return b & 255;
    }

    public abstract boolean equals(Object obj);

    public abstract int size();

    protected abstract int zza(int i, int i2, int i3);

    public abstract zzdp zza(int i, int i2);

    protected abstract String zza(Charset charset);

    abstract void zza(zzdo zzdoVar) throws IOException;

    public abstract boolean zzke();

    public abstract byte zzr(int i);

    abstract byte zzs(int i);

    public static zzdp zzb(byte[] bArr, int i, int i2) {
        zzb(i, i + i2, bArr.length);
        return new zzdz(zzabz.zzc(bArr, i, i2));
    }

    static zzdp zzg(byte[] bArr) {
        return new zzdz(bArr);
    }

    public static zzdp zzcn(String str) {
        return new zzdz(str.getBytes(zzfb.UTF_8));
    }

    public final String zzkd() {
        return size() == 0 ? "" : zza(zzfb.UTF_8);
    }

    public final int hashCode() {
        int iZza = this.zzaca;
        if (iZza == 0) {
            int size = size();
            iZza = zza(size, 0, size);
            if (iZza == 0) {
                iZza = 1;
            }
            this.zzaca = iZza;
        }
        return iZza;
    }

    static zzdx zzt(int i) {
        return new zzdx(i, null);
    }

    protected final int zzkf() {
        return this.zzaca;
    }

    static int zzb(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(32);
            sb.append("Beginning index: ");
            sb.append(i);
            sb.append(" < 0");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < i) {
            StringBuilder sb2 = new StringBuilder(66);
            sb2.append("Beginning index larger than ending index: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("End index: ");
        sb3.append(i2);
        sb3.append(" >= ");
        sb3.append(i3);
        throw new IndexOutOfBoundsException(sb3.toString());
    }

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new zzdq(this);
    }

    static {
        zzdq zzdqVar = null;
        zzabz = zzdk.zzkb() ? new zzea(zzdqVar) : new zzdt(zzdqVar);
        zzacb = new zzdr();
    }
}
