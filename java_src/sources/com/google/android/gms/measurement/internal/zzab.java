package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzob;

/* JADX INFO: loaded from: classes10.dex */
final class zzab extends zzac {
    private com.google.android.gms.internal.measurement.zzew.zze zzg;
    private final /* synthetic */ zzt zzh;

    @Override // com.google.android.gms.measurement.internal.zzac
    final int zza() {
        return this.zzg.zza();
    }

    @Override // com.google.android.gms.measurement.internal.zzac
    final boolean zzb() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzac
    final boolean zzc() {
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzab(zzt zztVar, String str, int i10, com.google.android.gms.internal.measurement.zzew.zze zzeVar) {
        super(str, i10);
        this.zzh = zztVar;
        this.zzg = zzeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    final boolean zza(Long l, Long l6, com.google.android.gms.internal.measurement.zzfi.zzn zznVar, boolean z6) {
        Object[] objArr = zzob.zza() && this.zzh.zze().zzf(this.zza, zzbi.zzbe);
        boolean zZzf = this.zzg.zzf();
        boolean zZzg = this.zzg.zzg();
        boolean zZzh = this.zzg.zzh();
        Object[] objArr2 = zZzf || zZzg || zZzh;
        Boolean boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        boolZza = null;
        if (z6 && objArr2 != true) {
            this.zzh.zzj().zzp().zza("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.zzb), this.zzg.zzi() ? Integer.valueOf(this.zzg.zza()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.zzew.zzc zzcVarZzb = this.zzg.zzb();
        boolean zZzf2 = zzcVarZzb.zzf();
        if (zznVar.zzk()) {
            if (zzcVarZzb.zzh()) {
                boolZza = zzac.zza(zzac.zza(zznVar.zzc(), zzcVarZzb.zzc()), zZzf2);
            } else {
                this.zzh.zzj().zzu().zza("No number filter for long property. property", this.zzh.zzi().zzc(zznVar.zzg()));
            }
        } else if (zznVar.zzi()) {
            if (zzcVarZzb.zzh()) {
                boolZza = zzac.zza(zzac.zza(zznVar.zza(), zzcVarZzb.zzc()), zZzf2);
            } else {
                this.zzh.zzj().zzu().zza("No number filter for double property. property", this.zzh.zzi().zzc(zznVar.zzg()));
            }
        } else if (!zznVar.zzm()) {
            this.zzh.zzj().zzu().zza("User property has no value, property", this.zzh.zzi().zzc(zznVar.zzg()));
        } else if (zzcVarZzb.zzj()) {
            boolZza = zzac.zza(zzac.zza(zznVar.zzh(), zzcVarZzb.zzd(), this.zzh.zzj()), zZzf2);
        } else if (!zzcVarZzb.zzh()) {
            this.zzh.zzj().zzu().zza("No string or number filter defined. property", this.zzh.zzi().zzc(zznVar.zzg()));
        } else if (zzmz.zzb(zznVar.zzh())) {
            boolZza = zzac.zza(zzac.zza(zznVar.zzh(), zzcVarZzb.zzc()), zZzf2);
        } else {
            this.zzh.zzj().zzu().zza("Invalid user property value for Numeric number filter. property, value", this.zzh.zzi().zzc(zznVar.zzg()), zznVar.zzh());
        }
        this.zzh.zzj().zzp().zza("Property filter result", boolZza == null ? "null" : boolZza);
        if (boolZza == null) {
            return false;
        }
        this.zzc = Boolean.TRUE;
        if (zZzh && !boolZza.booleanValue()) {
            return true;
        }
        if (!z6 || this.zzg.zzf()) {
            this.zzd = boolZza;
        }
        if (boolZza.booleanValue() && objArr2 != false && zznVar.zzl()) {
            long jZzd = zznVar.zzd();
            if (l != null) {
                jZzd = l.longValue();
            }
            if (objArr != false && this.zzg.zzf() && !this.zzg.zzg() && l6 != null) {
                jZzd = l6.longValue();
            }
            if (this.zzg.zzg()) {
                this.zzf = Long.valueOf(jZzd);
            } else {
                this.zze = Long.valueOf(jZzd);
            }
        }
        return true;
    }
}
