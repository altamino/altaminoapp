package com.google.android.gms.internal.auth;

/* JADX INFO: loaded from: classes9.dex */
final class zzfo implements zzgi {
    private static final zzfu zza = new zzfm();
    private final zzfu zzb;

    public zzfo() {
        zzfu zzfuVar;
        zzfu[] zzfuVarArr = new zzfu[2];
        zzfuVarArr[0] = zzer.zza();
        try {
            zzfuVar = (zzfu) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzfuVar = zza;
        }
        zzfuVarArr[1] = zzfuVar;
        zzfn zzfnVar = new zzfn(zzfuVarArr);
        zzez.zzf(zzfnVar, "messageInfoFactory");
        this.zzb = zzfnVar;
    }

    private static boolean zzb(zzft zzftVar) {
        if (zzftVar.zzc() == 1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final zzgh zza(Class cls) {
        zzgj.zzg(cls);
        zzft zzftVarZzb = this.zzb.zzb(cls);
        if (zzftVarZzb.zzb()) {
            if (zzeu.class.isAssignableFrom(cls)) {
                return zzga.zzb(zzgj.zzc(), zzen.zzb(), zzftVarZzb.zza());
            }
            return zzga.zzb(zzgj.zza(), zzen.zza(), zzftVarZzb.zza());
        }
        if (zzeu.class.isAssignableFrom(cls)) {
            if (zzb(zzftVarZzb)) {
                return zzfz.zzj(cls, zzftVarZzb, zzgc.zzb(), zzfk.zzd(), zzgj.zzc(), zzen.zzb(), zzfs.zzb());
            }
            return zzfz.zzj(cls, zzftVarZzb, zzgc.zzb(), zzfk.zzd(), zzgj.zzc(), null, zzfs.zzb());
        }
        if (zzb(zzftVarZzb)) {
            return zzfz.zzj(cls, zzftVarZzb, zzgc.zza(), zzfk.zzc(), zzgj.zza(), zzen.zza(), zzfs.zza());
        }
        return zzfz.zzj(cls, zzftVarZzb, zzgc.zza(), zzfk.zzc(), zzgj.zzb(), null, zzfs.zza());
    }
}
