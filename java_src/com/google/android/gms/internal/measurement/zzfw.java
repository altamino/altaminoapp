package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzez;

/* loaded from: classes2.dex */
final class zzfw implements zzgz {
    private static final zzgg zzaiq = new zzfx();
    private final zzgg zzaip;

    public zzfw() {
        this(new zzfy(zzey.zzmf(), zznl()));
    }

    private zzfw(zzgg zzggVar) {
        this.zzaip = (zzgg) zzfb.zza(zzggVar, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.measurement.zzgz
    public final <T> zzgy<T> zze(Class<T> cls) {
        zzha.zzg(cls);
        zzgf zzgfVarZzc = this.zzaip.zzc(cls);
        if (zzgfVarZzc.zznt()) {
            if (zzez.class.isAssignableFrom(cls)) {
                return zzgn.zza(zzha.zzof(), zzep.zzlv(), zzgfVarZzc.zznu());
            }
            return zzgn.zza(zzha.zzod(), zzep.zzlw(), zzgfVarZzc.zznu());
        }
        if (zzez.class.isAssignableFrom(cls)) {
            if (zza(zzgfVarZzc)) {
                return zzgl.zza(cls, zzgfVarZzc, zzgr.zznx(), zzfr.zznj(), zzha.zzof(), zzep.zzlv(), zzge.zznq());
            }
            return zzgl.zza(cls, zzgfVarZzc, zzgr.zznx(), zzfr.zznj(), zzha.zzof(), (zzen<?>) null, zzge.zznq());
        }
        if (zza(zzgfVarZzc)) {
            return zzgl.zza(cls, zzgfVarZzc, zzgr.zznw(), zzfr.zzni(), zzha.zzod(), zzep.zzlw(), zzge.zznp());
        }
        return zzgl.zza(cls, zzgfVarZzc, zzgr.zznw(), zzfr.zzni(), zzha.zzoe(), (zzen<?>) null, zzge.zznp());
    }

    private static boolean zza(zzgf zzgfVar) {
        return zzgfVar.zzns() == zzez.zze.zzahc;
    }

    private static zzgg zznl() {
        try {
            return (zzgg) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzaiq;
        }
    }
}
