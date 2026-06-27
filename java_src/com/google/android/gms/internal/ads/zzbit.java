package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

@zzard
/* loaded from: classes2.dex */
public final class zzbit {
    public static zzbgz zza(final Context context, final zzbin zzbinVar, final String str, final boolean z, final boolean z2, final zzdh zzdhVar, final zzbai zzbaiVar, zzadi zzadiVar, final com.google.android.gms.ads.internal.zzj zzjVar, final com.google.android.gms.ads.internal.zza zzaVar, final zzwj zzwjVar) throws zzbhj {
        try {
            final zzadi zzadiVar2 = null;
            return (zzbgz) zzazl.zzb(new Callable(context, zzbinVar, str, z, z2, zzdhVar, zzbaiVar, zzadiVar2, zzjVar, zzaVar, zzwjVar) { // from class: com.google.android.gms.internal.ads.zzbiu
                private final Context zzdef;
                private final String zzdsr;
                private final zzbin zzejz;
                private final boolean zzeka;
                private final boolean zzekb;
                private final zzdh zzekc;
                private final zzbai zzekd;
                private final zzadi zzeke;
                private final com.google.android.gms.ads.internal.zzj zzekf;
                private final com.google.android.gms.ads.internal.zza zzekg;
                private final zzwj zzekh;

                {
                    this.zzdef = context;
                    this.zzejz = zzbinVar;
                    this.zzdsr = str;
                    this.zzeka = z;
                    this.zzekb = z2;
                    this.zzekc = zzdhVar;
                    this.zzekd = zzbaiVar;
                    this.zzeke = zzadiVar2;
                    this.zzekf = zzjVar;
                    this.zzekg = zzaVar;
                    this.zzekh = zzwjVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context2 = this.zzdef;
                    zzbin zzbinVar2 = this.zzejz;
                    String str2 = this.zzdsr;
                    boolean z3 = this.zzeka;
                    boolean z4 = this.zzekb;
                    zzdh zzdhVar2 = this.zzekc;
                    zzbai zzbaiVar2 = this.zzekd;
                    zzadi zzadiVar3 = this.zzeke;
                    com.google.android.gms.ads.internal.zzj zzjVar2 = this.zzekf;
                    com.google.android.gms.ads.internal.zza zzaVar2 = this.zzekg;
                    zzwj zzwjVar2 = this.zzekh;
                    zzbio zzbioVar = new zzbio();
                    zzbiv zzbivVar = new zzbiv(new zzbim(context2), zzbioVar, zzbinVar2, str2, z3, z4, zzdhVar2, zzbaiVar2, zzadiVar3, zzjVar2, zzaVar2, zzwjVar2);
                    zzbhk zzbhkVar = new zzbhk(zzbivVar);
                    zzbivVar.setWebChromeClient(new zzbgr(zzbhkVar));
                    zzbioVar.zza(zzbhkVar, z4);
                    return zzbhkVar;
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "AdWebViewFactory.newAdWebView2");
            throw new zzbhj("Webview initialization failed.", th);
        }
    }
}
