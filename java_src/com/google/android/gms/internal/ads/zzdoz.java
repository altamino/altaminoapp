package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdob;

/* loaded from: classes2.dex */
final class zzdoz implements zzdqc {
    private static final zzdpj zzhjg = new zzdpa();
    private final zzdpj zzhjf;

    public zzdoz() {
        this(new zzdpb(zzdoa.zzaxq(), zzays()));
    }

    private zzdoz(zzdpj zzdpjVar) {
        this.zzhjf = (zzdpj) zzdod.zza(zzdpjVar, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.ads.zzdqc
    public final <T> zzdqb<T> zzf(Class<T> cls) {
        zzdqd.zzh(cls);
        zzdpi zzdpiVarZzd = this.zzhjf.zzd(cls);
        if (zzdpiVarZzd.zzaza()) {
            if (zzdob.class.isAssignableFrom(cls)) {
                return zzdpq.zza(zzdqd.zzazm(), zzdnr.zzaxg(), zzdpiVarZzd.zzazb());
            }
            return zzdpq.zza(zzdqd.zzazk(), zzdnr.zzaxh(), zzdpiVarZzd.zzazb());
        }
        if (zzdob.class.isAssignableFrom(cls)) {
            if (zza(zzdpiVarZzd)) {
                return zzdpo.zza(cls, zzdpiVarZzd, zzdpu.zzaze(), zzdou.zzayr(), zzdqd.zzazm(), zzdnr.zzaxg(), zzdph.zzayx());
            }
            return zzdpo.zza(cls, zzdpiVarZzd, zzdpu.zzaze(), zzdou.zzayr(), zzdqd.zzazm(), (zzdnp<?>) null, zzdph.zzayx());
        }
        if (zza(zzdpiVarZzd)) {
            return zzdpo.zza(cls, zzdpiVarZzd, zzdpu.zzazd(), zzdou.zzayq(), zzdqd.zzazk(), zzdnr.zzaxh(), zzdph.zzayw());
        }
        return zzdpo.zza(cls, zzdpiVarZzd, zzdpu.zzazd(), zzdou.zzayq(), zzdqd.zzazl(), (zzdnp<?>) null, zzdph.zzayw());
    }

    private static boolean zza(zzdpi zzdpiVar) {
        return zzdpiVar.zzayz() == zzdob.zze.zzhhs;
    }

    private static zzdpj zzays() {
        try {
            return (zzdpj) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzhjg;
        }
    }
}
