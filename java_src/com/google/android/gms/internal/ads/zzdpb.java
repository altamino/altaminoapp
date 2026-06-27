package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzdpb implements zzdpj {
    private zzdpj[] zzhjh;

    zzdpb(zzdpj... zzdpjVarArr) {
        this.zzhjh = zzdpjVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final boolean zzc(Class<?> cls) {
        for (zzdpj zzdpjVar : this.zzhjh) {
            if (zzdpjVar.zzc(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final zzdpi zzd(Class<?> cls) {
        for (zzdpj zzdpjVar : this.zzhjh) {
            if (zzdpjVar.zzc(cls)) {
                return zzdpjVar.zzd(cls);
            }
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "No factory is available for message type: ".concat(strValueOf) : new String("No factory is available for message type: "));
    }
}
