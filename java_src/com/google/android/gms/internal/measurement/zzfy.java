package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzfy implements zzgg {
    private zzgg[] zzair;

    zzfy(zzgg... zzggVarArr) {
        this.zzair = zzggVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzgg
    public final boolean zzb(Class<?> cls) {
        for (zzgg zzggVar : this.zzair) {
            if (zzggVar.zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzgg
    public final zzgf zzc(Class<?> cls) {
        for (zzgg zzggVar : this.zzair) {
            if (zzggVar.zzb(cls)) {
                return zzggVar.zzc(cls);
            }
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "No factory is available for message type: ".concat(strValueOf) : new String("No factory is available for message type: "));
    }
}
