package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes10.dex */
final class zzfu implements zzgn {
    private static final zzga zza = new zzfs();
    private final zzga zzb;

    public zzfu() {
        zzga zzgaVar;
        zzga[] zzgaVarArr = new zzga[2];
        zzgaVarArr[0] = zzes.zza();
        try {
            zzgaVar = (zzga) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zzgaVar = zza;
        }
        zzgaVarArr[1] = zzgaVar;
        zzft zzftVar = new zzft(zzgaVarArr);
        byte[] bArr = zzfd.zzd;
        this.zzb = zzftVar;
    }

    private static boolean zzb(zzfz zzfzVar) {
        if (zzfzVar.zzc() - 1 != 1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgn
    public final zzgm zza(Class cls) {
        zzgo.zzq(cls);
        zzfz zzfzVarZzb = this.zzb.zzb(cls);
        if (zzfzVarZzb.zzb()) {
            if (zzex.class.isAssignableFrom(cls)) {
                return zzgg.zzc(zzgo.zzn(), zzem.zzb(), zzfzVarZzb.zza());
            }
            return zzgg.zzc(zzgo.zzm(), zzem.zza(), zzfzVarZzb.zza());
        }
        if (zzex.class.isAssignableFrom(cls)) {
            if (zzb(zzfzVarZzb)) {
                return zzgf.zzl(cls, zzfzVarZzb, zzgi.zzb(), zzfq.zzd(), zzgo.zzn(), zzem.zzb(), zzfy.zzb());
            }
            return zzgf.zzl(cls, zzfzVarZzb, zzgi.zzb(), zzfq.zzd(), zzgo.zzn(), null, zzfy.zzb());
        }
        if (zzb(zzfzVarZzb)) {
            return zzgf.zzl(cls, zzfzVarZzb, zzgi.zza(), zzfq.zzc(), zzgo.zzm(), zzem.zza(), zzfy.zza());
        }
        return zzgf.zzl(cls, zzfzVarZzb, zzgi.zza(), zzfq.zzc(), zzgo.zzm(), null, zzfy.zza());
    }
}
