package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzbp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public class zzde extends zzdf {
    private static final String TAG = "zzde";
    private AdvertisingIdClient.Info zzwc;

    public static zzde zzb(Context context) {
        zzdf.zza(context, true);
        return new zzde(context);
    }

    @Override // com.google.android.gms.internal.ads.zzdf, com.google.android.gms.internal.ads.zzdd
    protected final zzbp.zza.C0007zza zza(Context context, View view, Activity activity) {
        return null;
    }

    private zzde(Context context) {
        super(context, "");
    }

    public static String zza(String str, String str2) {
        return zzci.zza(str, str2, true);
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final void zza(zzdy zzdyVar, Context context, zzbp.zza.C0007zza c0007zza, zzbk.zza zzaVar) throws InterruptedException {
        if (zzdyVar.zzxp) {
            AdvertisingIdClient.Info info = this.zzwc;
            if (info != null) {
                String id = info.getId();
                if (!TextUtils.isEmpty(id)) {
                    c0007zza.zzaf(zzef.zzap(id));
                    c0007zza.zzb(zzbp.zza.zzc.DEVICE_IDENTIFIER_ANDROID_AD_ID);
                    c0007zza.zzb(this.zzwc.isLimitAdTrackingEnabled());
                }
                this.zzwc = null;
                return;
            }
            return;
        }
        zzdf.zza(zzb(zzdyVar, context, c0007zza, zzaVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdf
    protected final List<Callable<Void>> zzb(zzdy zzdyVar, Context context, zzbp.zza.C0007zza c0007zza, zzbk.zza zzaVar) {
        ArrayList arrayList = new ArrayList();
        if (zzdyVar.zzch() == null) {
            return arrayList;
        }
        arrayList.add(new zzes(zzdyVar, "3pegtvj7nkb7e3rwh5b+3dnQATJj6aqtaosJ3DkOYPzNGN2w+CoarbJEsY1UQgeA", "/kRTFQbKQx44ublaFMNQ8yNL6QxOrgEofiWDpZSH6zA=", c0007zza, zzdyVar.zzcd(), 24));
        return arrayList;
    }

    public final void zza(AdvertisingIdClient.Info info) {
        this.zzwc = info;
    }
}
