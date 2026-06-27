package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.Map;

@zzard
/* loaded from: classes2.dex */
public final class zzbfp implements zzaho<zzbdf> {
    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbdf zzbdfVar, Map map) throws NumberFormatException {
        zzbdf zzbdfVar2 = zzbdfVar;
        zzbhq zzbhqVarZzyb = zzbdfVar2.zzyb();
        if (zzbhqVarZzyb == null) {
            try {
                zzbhq zzbhqVar = new zzbhq(zzbdfVar2, Float.parseFloat((String) map.get("duration")), IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(map.get("customControlsAllowed")), IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(map.get("clickToExpandAllowed")));
                zzbdfVar2.zza(zzbhqVar);
                zzbhqVarZzyb = zzbhqVar;
            } catch (NullPointerException | NumberFormatException e) {
                zzbad.zzc("Unable to parse videoMeta message.", e);
                com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float f = Float.parseFloat((String) map.get("duration"));
        boolean zEquals = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(map.get("muted"));
        float f2 = Float.parseFloat((String) map.get("currentTime"));
        int i = Integer.parseInt((String) map.get("playbackState"));
        int i2 = (i < 0 || 3 < i) ? 0 : i;
        String str = (String) map.get("aspectRatio");
        float f3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (zzbad.isLoggable(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 140);
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(f2);
            sb.append(" , duration : ");
            sb.append(f);
            sb.append(" , isMuted : ");
            sb.append(zEquals);
            sb.append(" , playbackState : ");
            sb.append(i2);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            zzbad.zzdp(sb.toString());
        }
        zzbhqVarZzyb.zza(f2, f, i2, zEquals, f3);
    }
}
