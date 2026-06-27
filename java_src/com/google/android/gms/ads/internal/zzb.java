package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzard;
import com.google.android.gms.internal.ads.zzark;
import com.google.android.gms.internal.ads.zzavb;
import com.google.android.gms.internal.ads.zzaxi;
import java.util.List;

@zzard
/* loaded from: classes.dex */
public final class zzb {
    private boolean zzbqv;
    private zzavb zzbqw;
    private zzark zzbqx;
    private final Context zzlj;

    public zzb(Context context, zzavb zzavbVar, zzark zzarkVar) {
        this.zzlj = context;
        this.zzbqw = zzavbVar;
        this.zzbqx = null;
        if (this.zzbqx == null) {
            this.zzbqx = new zzark();
        }
    }

    private final boolean zzkw() {
        zzavb zzavbVar = this.zzbqw;
        return (zzavbVar != null && zzavbVar.zzuc().zzdrw) || this.zzbqx.zzdom;
    }

    public final void recordClick() {
        this.zzbqv = true;
    }

    public final boolean zzkx() {
        return !zzkw() || this.zzbqv;
    }

    public final void zzbk(String str) {
        List<String> list;
        if (zzkw()) {
            if (str == null) {
                str = "";
            }
            zzavb zzavbVar = this.zzbqw;
            if (zzavbVar != null) {
                zzavbVar.zza(str, null, 3);
                return;
            }
            zzark zzarkVar = this.zzbqx;
            if (!zzarkVar.zzdom || (list = zzarkVar.zzdon) == null) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String strReplace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    zzk.zzlg();
                    zzaxi.zzb(this.zzlj, "", strReplace);
                }
            }
        }
    }
}
