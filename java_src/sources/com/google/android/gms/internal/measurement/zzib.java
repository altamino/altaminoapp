package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class zzib {
    private static volatile int zzd = 100;
    int zza;
    int zzb;
    zzif zzc;
    private int zze;
    private boolean zzf;

    public static long zza(long j6) {
        return (-(j6 & 1)) ^ (j6 >>> 1);
    }

    public static int zze(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public abstract double zza() throws IOException;

    public abstract int zza(int i10) throws zzji;

    public abstract float zzb() throws IOException;

    public abstract void zzb(int i10) throws zzji;

    public abstract int zzc();

    public abstract void zzc(int i10);

    public abstract int zzd() throws IOException;

    public abstract boolean zzd(int i10) throws IOException;

    public abstract int zze() throws IOException;

    public abstract int zzf() throws IOException;

    public abstract int zzg() throws IOException;

    public abstract int zzh() throws IOException;

    public abstract int zzi() throws IOException;

    public abstract int zzj() throws IOException;

    public abstract long zzk() throws IOException;

    public abstract long zzl() throws IOException;

    abstract long zzm() throws IOException;

    public abstract long zzn() throws IOException;

    public abstract long zzo() throws IOException;

    public abstract long zzp() throws IOException;

    public abstract zzhm zzq() throws IOException;

    public abstract String zzr() throws IOException;

    public abstract String zzs() throws IOException;

    public abstract boolean zzt() throws IOException;

    public abstract boolean zzu() throws IOException;

    private zzib() {
        this.zzb = zzd;
        this.zze = Integer.MAX_VALUE;
        this.zzf = false;
    }

    static zzib zza(byte[] bArr, int i10, int i11, boolean z6) {
        zzia zziaVar = new zzia(bArr, i11);
        try {
            zziaVar.zza(i11);
            return zziaVar;
        } catch (zzji e) {
            throw new IllegalArgumentException(e);
        }
    }
}
