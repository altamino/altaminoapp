package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

@zzard
/* loaded from: classes2.dex */
public final class zzbhf {
    public static zzbbh<zzbgz> zza(final Context context, final zzbai zzbaiVar, final String str, final zzdh zzdhVar, final com.google.android.gms.ads.internal.zza zzaVar) {
        return zzbar.zza(zzbar.zzm(null), new zzbal(context, zzdhVar, zzbaiVar, zzaVar, str) { // from class: com.google.android.gms.internal.ads.zzbhg
            private final zzdh zzdcf;
            private final Context zzdef;
            private final zzbai zzejw;
            private final com.google.android.gms.ads.internal.zza zzejx;
            private final String zzejy;

            {
                this.zzdef = context;
                this.zzdcf = zzdhVar;
                this.zzejw = zzbaiVar;
                this.zzejx = zzaVar;
                this.zzejy = str;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) throws zzbhj {
                Context context2 = this.zzdef;
                zzdh zzdhVar2 = this.zzdcf;
                zzbai zzbaiVar2 = this.zzejw;
                com.google.android.gms.ads.internal.zza zzaVar2 = this.zzejx;
                String str2 = this.zzejy;
                com.google.android.gms.ads.internal.zzk.zzlh();
                zzbgz zzbgzVarZza = zzbhf.zza(context2, zzbin.zzabu(), "", false, false, zzdhVar2, zzbaiVar2, null, null, zzaVar2, zzwj.zznl());
                final zzbbq zzbbqVarZzn = zzbbq.zzn(zzbgzVarZza);
                zzbgzVarZza.zzaai().zza(new zzbij(zzbbqVarZzn) { // from class: com.google.android.gms.internal.ads.zzbhi
                    private final zzbbq zzeki;

                    {
                        this.zzeki = zzbbqVarZzn;
                    }

                    @Override // com.google.android.gms.internal.ads.zzbij
                    public final void zzae(boolean z) {
                        this.zzeki.zzxe();
                    }
                });
                zzbgzVarZza.loadUrl(str2);
                return zzbbqVarZzn;
            }
        }, zzbbm.zzeae);
    }

    public static zzbgz zza(final Context context, final zzbin zzbinVar, final String str, final boolean z, final boolean z2, final zzdh zzdhVar, final zzbai zzbaiVar, zzadi zzadiVar, final com.google.android.gms.ads.internal.zzj zzjVar, final com.google.android.gms.ads.internal.zza zzaVar, final zzwj zzwjVar) throws zzbhj {
        zzacu.initialize(context);
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcoi)).booleanValue()) {
            return zzbit.zza(context, zzbinVar, str, z, z2, zzdhVar, zzbaiVar, null, zzjVar, zzaVar, zzwjVar);
        }
        try {
            final zzadi zzadiVar2 = null;
            return (zzbgz) zzazl.zzb(new Callable(context, zzbinVar, str, z, z2, zzdhVar, zzbaiVar, zzadiVar2, zzjVar, zzaVar, zzwjVar) { // from class: com.google.android.gms.internal.ads.zzbhh
                private final Context zzdef;
                private final String zzdsr;
                private final zzbin zzejz;
                private final boolean zzeka;
                private final boolean zzekb;
                private final zzdh zzekc;
                private final zzbai zzekd;
                private final zzadi zzeke = null;
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
                    zzbhk zzbhkVar = new zzbhk(zzbhm.zzb(context2, zzbinVar2, str2, z3, z4, zzdhVar2, zzbaiVar2, zzadiVar3, zzjVar2, zzaVar2, zzwjVar2));
                    zzbhkVar.setWebViewClient(com.google.android.gms.ads.internal.zzk.zzli().zza(zzbhkVar, zzwjVar2, z4));
                    zzbhkVar.setWebChromeClient(new zzbgr(zzbhkVar));
                    return zzbhkVar;
                }
            });
        } catch (Throwable th) {
            throw new zzbhj("Webview initialization failed.", th);
        }
    }
}
