package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcvy implements zzcva<zzcvx> {
    private final String packageName;
    private final zzbbl zzfqw;
    private final zzasc zzgiy;
    private final Context zzlj;

    public zzcvy(zzasc zzascVar, Context context, String str, zzbbl zzbblVar) {
        this.zzgiy = zzascVar;
        this.zzlj = context;
        this.packageName = str;
        this.zzfqw = zzbblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcvx> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcvz
            private final zzcvy zzgiz;

            {
                this.zzgiz = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgiz.zzamb();
            }
        });
    }

    final /* synthetic */ zzcvx zzamb() throws Exception {
        JSONObject jSONObject = new JSONObject();
        zzasc zzascVar = this.zzgiy;
        if (zzascVar != null) {
            zzascVar.zza(this.zzlj, this.packageName, jSONObject);
        }
        return new zzcvx(jSONObject);
    }
}
