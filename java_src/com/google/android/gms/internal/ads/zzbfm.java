package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.Arrays;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzbfm implements zzbgd {
    @Override // com.google.android.gms.internal.ads.zzbgd
    public final zzbft zza(zzbdf zzbdfVar, int i, String str, zzbde zzbdeVar) {
        if (Build.VERSION.SDK_INT >= 16 && i > 0) {
            List listAsList = Arrays.asList(zzbdeVar.zzeeg.split(","));
            if (listAsList.contains("3")) {
                int iZzyq = zzbfa.zzyq();
                return iZzyq < zzbdeVar.zzeej ? new zzbgp(zzbdfVar, zzbdeVar) : iZzyq < zzbdeVar.zzeed ? new zzbgo(zzbdfVar, zzbdeVar) : new zzbgf(zzbdfVar);
            }
            if (listAsList.contains(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) {
                int iZzyq2 = zzbdk.zzyq();
                if (iZzyq2 < zzbdeVar.zzeej) {
                    if (i == 1) {
                        return new zzbgk(zzbdfVar);
                    }
                    if (i == 2) {
                        return new zzbgh(zzbdfVar, null);
                    }
                }
                return iZzyq2 < zzbdeVar.zzeed ? new zzbgg(zzbdfVar, zzbdeVar) : new zzbgf(zzbdfVar);
            }
        }
        return new zzbge(zzbdfVar);
    }
}
