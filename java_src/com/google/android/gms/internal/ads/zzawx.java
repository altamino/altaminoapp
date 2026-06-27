package com.google.android.gms.internal.ads;

import android.content.Context;

@zzard
/* loaded from: classes2.dex */
public final class zzawx {
    public static void zzaj(Context context) {
        if (zzazx.zzbk(context) && !zzazx.zzxb()) {
            zzbbh zzbbhVarZzvi = new zzawy(context).zzvi();
            zzbad.zzeo("Updating ad debug logging enablement.");
            zzbao.zza(zzbbhVarZzvi, "AdDebugLogUpdater.updateEnablement");
        }
    }
}
