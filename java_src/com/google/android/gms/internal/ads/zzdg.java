package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzbp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzdg extends zzdf {
    public static zzdg zza(String str, Context context, boolean z) {
        zzdf.zza(context, z);
        return new zzdg(context, str, z);
    }

    private zzdg(Context context, String str, boolean z) {
        super(context, str, z);
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final List<Callable<Void>> zzb(zzdy zzdyVar, Context context, zzbp.zza.C0007zza c0007zza, zzbk.zza zzaVar) {
        if (zzdyVar.zzch() == null || !this.zzwf) {
            return super.zzb(zzdyVar, context, c0007zza, zzaVar);
        }
        int iZzcd = zzdyVar.zzcd();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzb(zzdyVar, context, c0007zza, zzaVar));
        arrayList.add(new zzes(zzdyVar, "3pegtvj7nkb7e3rwh5b+3dnQATJj6aqtaosJ3DkOYPzNGN2w+CoarbJEsY1UQgeA", "/kRTFQbKQx44ublaFMNQ8yNL6QxOrgEofiWDpZSH6zA=", c0007zza, iZzcd, 24));
        return arrayList;
    }
}
