package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes10.dex */
final class zzhl extends zzhm {
    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final double zza(Object obj, long j6) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j6));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final float zzb(Object obj, long j6) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j6));
    }

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzhn.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 boolean)' in method call: com.google.android.gms.internal.play_billing.zzhn.zzi(java.lang.Object, long, boolean):void */
    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zzc(Object obj, long j6, boolean z6) {
        if (zzhn.zzb) {
            zzhn.zzi(obj, j6, z6);
        } else {
            zzhn.zzE(obj, j6, z6 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zzd(Object obj, long j6, byte b7) {
        if (zzhn.zzb) {
            zzhn.zzD(obj, j6, b7);
        } else {
            zzhn.zzE(obj, j6, b7);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final boolean zzg(Object obj, long j6) {
        return zzhn.zzb ? zzhn.zzt(obj, j6) : zzhn.zzu(obj, j6);
    }

    zzhl(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zze(Object obj, long j6, double d) {
        this.zza.putLong(obj, j6, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void zzf(Object obj, long j6, float f) {
        this.zza.putInt(obj, j6, Float.floatToIntBits(f));
    }
}
