package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@zzard
@TargetApi(21)
/* loaded from: classes2.dex */
final class zzave {
    private static final Map<String, String> zzdrz;
    private final List<String> zzdsa;
    private final zzauq zzdsb;
    private final Context zzlj;

    zzave(Context context, List<String> list, zzauq zzauqVar) {
        this.zzlj = context;
        this.zzdsa = list;
        this.zzdsb = zzauqVar;
    }

    final List<String> zzb(String[] strArr) {
        boolean z;
        boolean z2;
        String strValueOf;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Iterator<String> it = this.zzdsa.iterator();
            do {
                z = true;
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                String next = it.next();
                if (next.equals(str)) {
                    break;
                }
                strValueOf = String.valueOf(next);
            } while (!(strValueOf.length() != 0 ? "android.webkit.resource.".concat(strValueOf) : new String("android.webkit.resource.")).equals(str));
            z2 = true;
            if (z2) {
                if (zzdrz.containsKey(str)) {
                    com.google.android.gms.ads.internal.zzk.zzlg();
                    if (!zzaxi.zzp(this.zzlj, zzdrz.get(str))) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                } else {
                    this.zzdsb.zzdm(str);
                }
            } else {
                this.zzdsb.zzdl(str);
            }
        }
        return arrayList;
    }

    static {
        HashMap map = new HashMap();
        if (PlatformVersion.isAtLeastLollipop()) {
            map.put("android.webkit.resource.AUDIO_CAPTURE", "android.permission.RECORD_AUDIO");
            map.put("android.webkit.resource.VIDEO_CAPTURE", "android.permission.CAMERA");
        }
        zzdrz = map;
    }
}
