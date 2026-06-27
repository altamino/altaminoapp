package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzbp;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzen extends zzfk {
    private static final zzfl<zzch> zzzh = new zzfl<>();
    private final Context zzzg;
    private zzbk.zza zzzi;

    public zzen(zzdy zzdyVar, String str, String str2, zzbp.zza.C0007zza c0007zza, int i, int i2, Context context, zzbk.zza zzaVar) {
        super(zzdyVar, str, str2, c0007zza, i, 27);
        this.zzzi = null;
        this.zzzg = context;
        this.zzzi = zzaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfk
    protected final void zzcx() throws IllegalAccessException, InvocationTargetException {
        zzch zzchVar;
        zzbm zzbmVar;
        AtomicReference<zzch> atomicReferenceZzar = zzzh.zzar(this.zzzg.getPackageName());
        synchronized (atomicReferenceZzar) {
            zzch zzchVar2 = atomicReferenceZzar.get();
            if (zzchVar2 == null || zzef.zzaq(zzchVar2.zzne) || zzchVar2.zzne.equals("E") || zzchVar2.zzne.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (!zzef.zzaq(zza(this.zzzi))) {
                    zzbmVar = zzbm.ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
                } else {
                    zzbk.zza zzaVar = this.zzzi;
                    if (Boolean.valueOf(zzef.zzaq(zza(zzaVar)) && zzaVar != null && zzaVar.zzu() && zzaVar.zzv().zzz() == zzbm.ENUM_SIGNAL_SOURCE_GASS).booleanValue() && this.zzvd.zzcn()) {
                        zzbmVar = zzbm.ENUM_SIGNAL_SOURCE_GASS;
                    } else {
                        zzbmVar = zzbm.ENUM_SIGNAL_SOURCE_ADSHIELD;
                    }
                }
                Method method = this.zzzw;
                Object[] objArr = new Object[3];
                objArr[0] = this.zzzg;
                objArr[1] = Boolean.valueOf(zzbmVar == zzbm.ENUM_SIGNAL_SOURCE_ADSHIELD);
                objArr[2] = zzyt.zzpe().zzd(zzacu.zzcrj);
                zzch zzchVar3 = new zzch((String) method.invoke(null, objArr));
                if (zzef.zzaq(zzchVar3.zzne) || zzchVar3.zzne.equals("E")) {
                    int i = zzeo.zzzj[zzbmVar.ordinal()];
                    if (i == 1) {
                        zzchVar3.zzne = this.zzzi.zzx().zzae();
                    } else if (i == 2) {
                        String strZzcy = zzcy();
                        if (!zzef.zzaq(strZzcy)) {
                            zzchVar3.zzne = strZzcy;
                        }
                    }
                }
                atomicReferenceZzar.set(zzchVar3);
            }
            zzchVar = atomicReferenceZzar.get();
        }
        synchronized (this.zzzm) {
            if (zzchVar != null) {
                this.zzzm.zzz(zzchVar.zzne);
                this.zzzm.zzba(zzchVar.zznf);
                this.zzzm.zzab(zzchVar.zzng);
                this.zzzm.zzac(zzchVar.zznh);
                this.zzzm.zzad(zzchVar.zzni);
            }
        }
    }

    private static String zza(zzbk.zza zzaVar) {
        if (zzaVar == null || !zzaVar.zzw() || zzef.zzaq(zzaVar.zzx().zzae())) {
            return null;
        }
        return zzaVar.zzx().zzae();
    }

    private final String zzcy() throws ExecutionException, InterruptedException {
        try {
            if (this.zzvd.zzcq() != null) {
                this.zzvd.zzcq().get();
            }
            zzbp.zza zzaVarZzcp = this.zzvd.zzcp();
            if (zzaVarZzcp == null || !zzaVarZzcp.zzai()) {
                return null;
            }
            return zzaVarZzcp.zzae();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }
}
