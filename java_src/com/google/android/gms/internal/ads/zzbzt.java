package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.C;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbzt {
    private final zzbzb zzfno;
    private final zzccj zzfpz;
    private final zzcdn zzfqh;
    private final zzbmy zzfqi;
    private final Context zzlj;

    public zzbzt(Context context, zzcdn zzcdnVar, zzccj zzccjVar, zzbmy zzbmyVar, zzbzb zzbzbVar) {
        this.zzlj = context;
        this.zzfqh = zzcdnVar;
        this.zzfpz = zzccjVar;
        this.zzfqi = zzbmyVar;
        this.zzfno = zzbzbVar;
    }

    public final View zzajb() throws zzbhj {
        zzbgz zzbgzVarZzc = this.zzfqh.zzc(zzyd.zzg(this.zzlj));
        zzbgzVarZzc.getView().setVisibility(8);
        zzbgzVarZzc.zza("/sendMessageToSdk", new zzaho(this) { // from class: com.google.android.gms.internal.ads.zzbzu
            private final zzbzt zzfqj;

            {
                this.zzfqj = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, Map map) {
                this.zzfqj.zzd((zzbgz) obj, map);
            }
        });
        zzbgzVarZzc.zza("/adMuted", new zzaho(this) { // from class: com.google.android.gms.internal.ads.zzbzv
            private final zzbzt zzfqj;

            {
                this.zzfqj = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, Map map) {
                this.zzfqj.zzc((zzbgz) obj, map);
            }
        });
        this.zzfpz.zza(new WeakReference(zzbgzVarZzc), "/loadHtml", new zzaho(this) { // from class: com.google.android.gms.internal.ads.zzbzw
            private final zzbzt zzfqj;

            {
                this.zzfqj = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, final Map map) {
                final zzbzt zzbztVar = this.zzfqj;
                zzbgz zzbgzVar = (zzbgz) obj;
                zzbgzVar.zzaai().zza(new zzbij(zzbztVar, map) { // from class: com.google.android.gms.internal.ads.zzbzz
                    private final Map zzdza;
                    private final zzbzt zzfqj;

                    {
                        this.zzfqj = zzbztVar;
                        this.zzdza = map;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbij
                    public final void zzae(boolean z) {
                        this.zzfqj.zza(this.zzdza, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    zzbgzVar.loadData(str, "text/html", C.UTF8_NAME);
                } else {
                    zzbgzVar.loadDataWithBaseURL(str2, str, "text/html", C.UTF8_NAME, null);
                }
            }
        });
        this.zzfpz.zza(new WeakReference(zzbgzVarZzc), "/showOverlay", new zzaho(this) { // from class: com.google.android.gms.internal.ads.zzbzx
            private final zzbzt zzfqj;

            {
                this.zzfqj = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, Map map) {
                this.zzfqj.zzb((zzbgz) obj, map);
            }
        });
        this.zzfpz.zza(new WeakReference(zzbgzVarZzc), "/hideOverlay", new zzaho(this) { // from class: com.google.android.gms.internal.ads.zzbzy
            private final zzbzt zzfqj;

            {
                this.zzfqj = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaho
            public final void zza(Object obj, Map map) {
                this.zzfqj.zza((zzbgz) obj, map);
            }
        });
        return zzbgzVarZzc.getView();
    }

    final /* synthetic */ void zza(zzbgz zzbgzVar, Map map) {
        zzbgzVar.getView().setVisibility(8);
        this.zzfqi.zzax(false);
    }

    final /* synthetic */ void zzb(zzbgz zzbgzVar, Map map) {
        zzbgzVar.getView().setVisibility(0);
        this.zzfqi.zzax(true);
    }

    final /* synthetic */ void zza(Map map, boolean z) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "htmlLoaded");
        map2.put("id", (String) map.get("id"));
        this.zzfpz.zza("sendMessageToNativeJs", map2);
    }

    final /* synthetic */ void zzc(zzbgz zzbgzVar, Map map) {
        this.zzfno.zzahl();
    }

    final /* synthetic */ void zzd(zzbgz zzbgzVar, Map map) {
        this.zzfpz.zza("sendMessageToNativeJs", (Map<String, ?>) map);
    }
}
