package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcwy implements zzdti<String> {
    private final zzcwx zzgjo;

    public zzcwy(zzcwx zzcwxVar) {
        this.zzgjo = zzcwxVar;
    }

    public static String zzb(zzcwx zzcwxVar) {
        return (String) zzdto.zza(zzcwxVar.zzamc(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return zzb(this.zzgjo);
    }
}
