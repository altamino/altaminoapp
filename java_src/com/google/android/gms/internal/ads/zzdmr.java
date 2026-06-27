package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class zzdmr implements Serializable, Iterable<Byte> {
    public static final zzdmr zzhcr = new zzdnb(zzdod.zzhia);
    private static final zzdmx zzhcs;
    private static final Comparator<zzdmr> zzhct;
    private int zzhca = 0;

    zzdmr() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzb(byte b) {
        return b & 255;
    }

    public abstract boolean equals(Object obj);

    public abstract int size();

    protected abstract String zza(Charset charset);

    abstract void zza(zzdmq zzdmqVar) throws IOException;

    protected abstract void zza(byte[] bArr, int i, int i2, int i3);

    public abstract boolean zzavo();

    public abstract zzdnd zzavp();

    protected abstract int zzf(int i, int i2, int i3);

    public abstract byte zzfm(int i);

    abstract byte zzfn(int i);

    public abstract zzdmr zzv(int i, int i2);

    public static zzdmr zzi(byte[] bArr, int i, int i2) {
        zzg(i, i + i2, bArr.length);
        return new zzdnb(zzhcs.zzj(bArr, i, i2));
    }

    public static zzdmr zzz(byte[] bArr) {
        return zzi(bArr, 0, bArr.length);
    }

    static zzdmr zzaa(byte[] bArr) {
        return new zzdnb(bArr);
    }

    public static zzdmr zzgv(String str) {
        return new zzdnb(str.getBytes(zzdod.UTF_8));
    }

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return zzdod.zzhia;
        }
        byte[] bArr = new byte[size];
        zza(bArr, 0, 0, size);
        return bArr;
    }

    public final String zzavn() {
        return size() == 0 ? "" : zza(zzdod.UTF_8);
    }

    public final int hashCode() {
        int iZzf = this.zzhca;
        if (iZzf == 0) {
            int size = size();
            iZzf = zzf(size, 0, size);
            if (iZzf == 0) {
                iZzf = 1;
            }
            this.zzhca = iZzf;
        }
        return iZzf;
    }

    static zzdmz zzfo(int i) {
        return new zzdmz(i, null);
    }

    protected final int zzavq() {
        return this.zzhca;
    }

    static int zzg(int i, int i2, int i3) {
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
        return new zzdms(this);
    }

    static {
        zzdms zzdmsVar = null;
        zzhcs = zzdmm.zzavl() ? new zzdnc(zzdmsVar) : new zzdmv(zzdmsVar);
        zzhct = new zzdmt();
    }
}
