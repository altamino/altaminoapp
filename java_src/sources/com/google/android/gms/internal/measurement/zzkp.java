package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class zzkp<T> implements zzlb<T> {
    private final zzkj zza;
    private final zzma<?, ?> zzb;
    private final boolean zzc;
    private final zzim<?> zzd;

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final int zza(T t5) {
        zzma<?, ?> zzmaVar = this.zzb;
        int iZzb = zzmaVar.zzb(zzmaVar.zzd(t5));
        return this.zzc ? iZzb + this.zzd.zza(t5).zza() : iZzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final int zzb(T t5) {
        int iHashCode = this.zzb.zzd(t5).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zza(t5).hashCode() : iHashCode;
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zzc(T t5) {
        this.zzb.zzf(t5);
        this.zzd.zzc(t5);
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final boolean zzd(T t5) {
        return this.zzd.zza(t5).zzg();
    }

    private zzkp(zzma<?, ?> zzmaVar, zzim<?> zzimVar, zzkj zzkjVar) {
        this.zzb = zzmaVar;
        this.zzc = zzimVar.zza(zzkjVar);
        this.zzd = zzimVar;
        this.zza = zzkjVar;
    }

    static <T> zzkp<T> zza(zzma<?, ?> zzmaVar, zzim<?> zzimVar, zzkj zzkjVar) {
        return new zzkp<>(zzmaVar, zzimVar, zzkjVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final boolean zzb(T t5, T t10) {
        if (!this.zzb.zzd(t5).equals(this.zzb.zzd(t10))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(t5).equals(this.zzd.zza(t10));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final T zza() {
        zzkj zzkjVar = this.zza;
        if (zzkjVar instanceof zzix) {
            return (T) ((zzix) zzkjVar).zzbz();
        }
        return (T) zzkjVar.zzcd().zzac();
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, T t10) {
        zzld.zza(this.zzb, t5, t10);
        if (this.zzc) {
            zzld.zza(this.zzd, t5, t10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, zzlc zzlcVar, zzik zzikVar) throws IOException {
        boolean zZzt;
        zzma<?, ?> zzmaVar = this.zzb;
        zzim<?> zzimVar = this.zzd;
        Object objZzc = zzmaVar.zzc(t5);
        zziq<T> zziqVarZzb = zzimVar.zzb(t5);
        while (zzlcVar.zzc() != Integer.MAX_VALUE) {
            try {
                int iZzd = zzlcVar.zzd();
                if (iZzd != 11) {
                    if ((iZzd & 7) == 2) {
                        Object objZza = zzimVar.zza(zzikVar, this.zza, iZzd >>> 3);
                        if (objZza != null) {
                            zzimVar.zza(zzlcVar, objZza, zzikVar, zziqVarZzb);
                        } else {
                            zZzt = zzmaVar.zza(objZzc, zzlcVar);
                        }
                    } else {
                        zZzt = zzlcVar.zzt();
                    }
                    if (!zZzt) {
                        zzmaVar.zzb(t5, objZzc);
                        return;
                    }
                } else {
                    Object objZza2 = null;
                    int iZzj = 0;
                    zzhm zzhmVarZzp = null;
                    while (zzlcVar.zzc() != Integer.MAX_VALUE) {
                        int iZzd2 = zzlcVar.zzd();
                        if (iZzd2 == 16) {
                            iZzj = zzlcVar.zzj();
                            objZza2 = zzimVar.zza(zzikVar, this.zza, iZzj);
                        } else if (iZzd2 == 26) {
                            if (objZza2 != null) {
                                zzimVar.zza(zzlcVar, objZza2, zzikVar, zziqVarZzb);
                            } else {
                                zzhmVarZzp = zzlcVar.zzp();
                            }
                        } else if (!zzlcVar.zzt()) {
                            break;
                        }
                    }
                    if (zzlcVar.zzd() != 12) {
                        throw zzji.zzb();
                    }
                    if (zzhmVarZzp != null) {
                        if (objZza2 != null) {
                            zzimVar.zza(zzhmVarZzp, objZza2, zzikVar, zziqVarZzb);
                        } else {
                            zzmaVar.zza(objZzc, iZzj, zzhmVarZzp);
                        }
                    }
                }
            } catch (Throwable th) {
                zzmaVar.zzb(t5, objZzc);
                throw th;
            }
        }
        zzmaVar.zzb(t5, objZzc);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0094  */
    /* JADX WARN: Code duplicated, block: B:56:0x0099 A[EDGE_INSN: B:56:0x0099->B:34:0x0099 BREAK  A[LOOP:1: B:18:0x0053->B:61:0x0053], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, byte[] bArr, int i10, int i11, zzhl zzhlVar) throws IOException {
        zzix zzixVar = (zzix) t5;
        zzlz zzlzVarZzd = zzixVar.zzb;
        if (zzlzVarZzd == zzlz.zzc()) {
            zzlzVarZzd = zzlz.zzd();
            zzixVar.zzb = zzlzVarZzd;
        }
        ((zzix.zzd) t5).zza();
        zzix.zzf zzfVar = null;
        while (i10 < i11) {
            int iZzc = zzhi.zzc(bArr, i10, zzhlVar);
            int i12 = zzhlVar.zza;
            if (i12 == 11) {
                int i13 = 0;
                zzhm zzhmVar = null;
                while (iZzc < i11) {
                    iZzc = zzhi.zzc(bArr, iZzc, zzhlVar);
                    int i14 = zzhlVar.zza;
                    int i15 = i14 >>> 3;
                    int i16 = i14 & 7;
                    if (i15 == 2) {
                        if (i16 != 0) {
                            if (i14 != 12) {
                                break;
                                break;
                            }
                            iZzc = zzhi.zza(i14, bArr, iZzc, i11, zzhlVar);
                        } else {
                            iZzc = zzhi.zzc(bArr, iZzc, zzhlVar);
                            i13 = zzhlVar.zza;
                            zzfVar = (zzix.zzf) this.zzd.zza(zzhlVar.zzd, this.zza, i13);
                        }
                    } else {
                        if (i15 == 3) {
                            if (zzfVar != null) {
                                zzkx.zza();
                                throw new NoSuchMethodError();
                            }
                            if (i16 == 2) {
                                iZzc = zzhi.zza(bArr, iZzc, zzhlVar);
                                zzhmVar = (zzhm) zzhlVar.zzc;
                            }
                        }
                        if (i14 != 12) {
                            break;
                        } else {
                            iZzc = zzhi.zza(i14, bArr, iZzc, i11, zzhlVar);
                        }
                    }
                }
                if (zzhmVar != null) {
                    zzlzVarZzd.zza((i13 << 3) | 2, zzhmVar);
                }
                i10 = iZzc;
            } else if ((i12 & 7) == 2) {
                zzfVar = (zzix.zzf) this.zzd.zza(zzhlVar.zzd, this.zza, i12 >>> 3);
                if (zzfVar == null) {
                    i10 = zzhi.zza(i12, bArr, iZzc, i11, zzlzVarZzd, zzhlVar);
                } else {
                    zzkx.zza();
                    throw new NoSuchMethodError();
                }
            } else {
                i10 = zzhi.zza(i12, bArr, iZzc, i11, zzhlVar);
            }
        }
        if (i10 != i11) {
            throw zzji.zzg();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlb
    public final void zza(T t5, zzmw zzmwVar) throws IOException {
        Iterator itZzd = this.zzd.zza(t5).zzd();
        while (itZzd.hasNext()) {
            Map.Entry entry = (Map.Entry) itZzd.next();
            zzis zzisVar = (zzis) entry.getKey();
            if (zzisVar.zzc() == zzmx.MESSAGE && !zzisVar.zze() && !zzisVar.zzd()) {
                if (entry instanceof zzjm) {
                    zzmwVar.zza(zzisVar.zza(), (Object) ((zzjm) entry).zza().zzc());
                } else {
                    zzmwVar.zza(zzisVar.zza(), entry.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        zzma<?, ?> zzmaVar = this.zzb;
        zzmaVar.zza(zzmaVar.zzd(t5), zzmwVar);
    }
}
