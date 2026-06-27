package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.Arrays;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzbcx extends zzbcp {
    @Override // com.google.android.gms.internal.ads.zzbcp
    public final zzbco zza(Context context, zzbdf zzbdfVar, int i, boolean z, zzadi zzadiVar, zzbde zzbdeVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (!(PlatformVersion.isAtLeastIceCreamSandwich() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11))) {
            return null;
        }
        zzbdg zzbdgVar = new zzbdg(context, zzbdfVar.zzyh(), zzbdfVar.zzyf(), zzadiVar, zzbdfVar.zzyc());
        if (Build.VERSION.SDK_INT >= 16 && i == 2) {
            List listAsList = Arrays.asList(zzbdeVar.zzeeg.split(","));
            if (listAsList.contains("3")) {
                return new zzbek(context, zzbdgVar, zzbdfVar, z, zzbcp.zza(zzbdfVar), zzbdeVar);
            }
            if (listAsList.contains(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) {
                return new zzbdq(context, zzbdgVar, zzbdfVar, i, z, zzbcp.zza(zzbdfVar), zzbdeVar);
            }
        }
        return new zzbcd(context, z, zzbcp.zza(zzbdfVar), zzbdeVar, new zzbdg(context, zzbdfVar.zzyh(), zzbdfVar.zzyf(), zzadiVar, zzbdfVar.zzyc()));
    }
}
