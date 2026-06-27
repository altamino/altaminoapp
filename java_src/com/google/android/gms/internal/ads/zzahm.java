package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzahm implements zzaho<zzbgz> {
    zzahm() {
    }

    @Override // com.google.android.gms.internal.ads.zzaho
    public final /* synthetic */ void zza(zzbgz zzbgzVar, Map map) {
        zzbgz zzbgzVar2 = zzbgzVar;
        if (map.keySet().contains(TtmlNode.START)) {
            zzbgzVar2.zzas(true);
        }
        if (map.keySet().contains("stop")) {
            zzbgzVar2.zzas(false);
        }
    }
}
