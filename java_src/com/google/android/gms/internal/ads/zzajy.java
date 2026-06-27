package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Predicate;
import java.util.Map;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzajy implements zzajq, zzajw {
    private final zzbgz zzdbs;
    private final Context zzlj;

    public zzajy(Context context, zzbai zzbaiVar, zzdh zzdhVar, com.google.android.gms.ads.internal.zza zzaVar) throws zzbhj {
        this.zzlj = context;
        com.google.android.gms.ads.internal.zzk.zzlh();
        this.zzdbs = zzbhf.zza(context, zzbin.zzabu(), "", false, false, zzdhVar, zzbaiVar, null, null, null, zzwj.zznl());
        this.zzdbs.getView().setWillNotDraw(true);
    }

    @Override // com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, Map map) {
        zzajr.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzajq, com.google.android.gms.internal.ads.zzaji
    public final void zza(String str, JSONObject jSONObject) {
        zzajr.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzakg
    public final void zzb(String str, JSONObject jSONObject) {
        zzajr.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzi(String str, String str2) {
        zzajr.zza(this, str, str2);
    }

    private static void runOnUiThread(Runnable runnable) {
        zzyt.zzpa();
        if (zzazt.zzwy()) {
            runnable.run();
        } else {
            zzaxi.zzdvv.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajq, com.google.android.gms.internal.ads.zzakg
    public final void zzco(final String str) {
        runOnUiThread(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzajz
            private final String zzdbk;
            private final zzajy zzdbt;

            {
                this.zzdbt = this;
                this.zzdbk = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdbt.zzct(this.zzdbk);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzcl(String str) {
        runOnUiThread(new zzakc(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzcm(String str) {
        runOnUiThread(new zzakd(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzcn(String str) {
        runOnUiThread(new zzake(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzalf
    public final void zza(String str, zzaho<? super zzalf> zzahoVar) {
        this.zzdbs.zza(str, new zzakf(this, zzahoVar));
    }

    @Override // com.google.android.gms.internal.ads.zzalf
    public final void zzb(String str, final zzaho<? super zzalf> zzahoVar) {
        this.zzdbs.zza(str, new Predicate(zzahoVar) { // from class: com.google.android.gms.internal.ads.zzaka
            private final zzaho zzdbu;

            {
                this.zzdbu = zzahoVar;
            }

            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzaho zzahoVar2 = (zzaho) obj;
                return (zzahoVar2 instanceof zzakf) && ((zzakf) zzahoVar2).zzdbz.equals(this.zzdbu);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zza(zzajx zzajxVar) {
        zzbii zzbiiVarZzaai = this.zzdbs.zzaai();
        zzajxVar.getClass();
        zzbiiVarZzaai.zza(zzakb.zzb(zzajxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzalg zzru() {
        return new zzalh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void destroy() {
        this.zzdbs.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final boolean isDestroyed() {
        return this.zzdbs.isDestroyed();
    }

    final /* synthetic */ void zzct(String str) {
        this.zzdbs.zzco(str);
    }
}
