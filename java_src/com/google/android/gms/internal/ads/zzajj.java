package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.exoplayer2.C;
import java.util.Map;
import org.json.JSONObject;

@zzard
/* loaded from: classes2.dex */
public final class zzajj extends zzaju<zzalf> implements zzajq, zzajw {
    private final zzbjb zzdbh;
    private zzajx zzdbi;

    public zzajj(Context context, zzbai zzbaiVar) throws zzbhj {
        try {
            this.zzdbh = new zzbjb(context, new zzajp(this));
            this.zzdbh.setWillNotDraw(true);
            this.zzdbh.addJavascriptInterface(new zzajo(this), "GoogleJsInterface");
            com.google.android.gms.ads.internal.zzk.zzlg().zza(context, zzbaiVar.zzbsx, this.zzdbh.getSettings());
            super.zzg(this);
        } catch (Throwable th) {
            throw new zzbhj("Init failed.", th);
        }
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

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzcl(String str) {
        zzcm(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", str));
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzcm(final String str) {
        zzbbm.zzeae.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzajk
            private final zzajj zzdbj;
            private final String zzdbk;

            {
                this.zzdbj = this;
                this.zzdbk = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdbj.zzcr(this.zzdbk);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zzcn(final String str) {
        zzbbm.zzeae.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzajl
            private final zzajj zzdbj;
            private final String zzdbk;

            {
                this.zzdbj = this;
                this.zzdbk = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdbj.zzcq(this.zzdbk);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void zza(zzajx zzajxVar) {
        this.zzdbi = zzajxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final void destroy() {
        this.zzdbh.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final boolean isDestroyed() {
        return this.zzdbh.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzajw
    public final zzalg zzru() {
        return new zzalh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzajq, com.google.android.gms.internal.ads.zzakg
    public final void zzco(final String str) {
        zzbbm.zzeae.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzajm
            private final zzajj zzdbj;
            private final String zzdbk;

            {
                this.zzdbj = this;
                this.zzdbk = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdbj.zzcp(this.zzdbk);
            }
        });
    }

    final /* synthetic */ void zzcp(String str) {
        this.zzdbh.zzco(str);
    }

    final /* synthetic */ void zzcq(String str) {
        this.zzdbh.loadUrl(str);
    }

    final /* synthetic */ void zzcr(String str) {
        this.zzdbh.loadData(str, "text/html", C.UTF8_NAME);
    }
}
