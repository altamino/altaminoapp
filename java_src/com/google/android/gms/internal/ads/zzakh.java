package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

@zzard
/* loaded from: classes2.dex */
public final class zzakh {
    private final Object lock;
    private int status;
    private final zzbai zzbtc;
    private final String zzdca;
    private zzayp<zzajw> zzdcb;
    private zzayp<zzajw> zzdcc;
    private zzala zzdcd;
    private final Context zzlj;

    public zzakh(Context context, zzbai zzbaiVar, String str) {
        this.lock = new Object();
        this.status = 1;
        this.zzdca = str;
        this.zzlj = context.getApplicationContext();
        this.zzbtc = zzbaiVar;
        this.zzdcb = new zzakv();
        this.zzdcc = new zzakv();
    }

    public zzakh(Context context, zzbai zzbaiVar, String str, zzayp<zzajw> zzaypVar, zzayp<zzajw> zzaypVar2) {
        this(context, zzbaiVar, str);
        this.zzdcb = zzaypVar;
        this.zzdcc = zzaypVar2;
    }

    protected final zzala zza(final zzdh zzdhVar) {
        final zzala zzalaVar = new zzala(this.zzdcc);
        zzbbm.zzeae.execute(new Runnable(this, zzdhVar, zzalaVar) { // from class: com.google.android.gms.internal.ads.zzaki
            private final zzakh zzdce;
            private final zzdh zzdcf;
            private final zzala zzdcg;

            {
                this.zzdce = this;
                this.zzdcf = zzdhVar;
                this.zzdcg = zzalaVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzdce.zza(this.zzdcf, this.zzdcg);
            }
        });
        zzalaVar.zza(new zzaks(this, zzalaVar), new zzakt(this, zzalaVar));
        return zzalaVar;
    }

    public final zzakw zzb(zzdh zzdhVar) {
        synchronized (this.lock) {
            synchronized (this.lock) {
                if (this.zzdcd != null && this.status == 0) {
                    if (((Boolean) zzyt.zzpe().zzd(zzacu.zzclb)).booleanValue()) {
                        this.zzdcd.zza(new zzbbv(this) { // from class: com.google.android.gms.internal.ads.zzakj
                            private final zzakh zzdce;

                            {
                                this.zzdce = this;
                            }

                            @Override // com.google.android.gms.internal.ads.zzbbv
                            public final void zzh(Object obj) {
                                this.zzdce.zza((zzajw) obj);
                            }
                        }, zzakk.zzdch);
                    }
                }
            }
            if (this.zzdcd != null && this.zzdcd.getStatus() != -1) {
                if (this.status == 0) {
                    return this.zzdcd.zzrx();
                }
                if (this.status == 1) {
                    this.status = 2;
                    zza((zzdh) null);
                    return this.zzdcd.zzrx();
                }
                if (this.status == 2) {
                    return this.zzdcd.zzrx();
                }
                return this.zzdcd.zzrx();
            }
            this.status = 2;
            this.zzdcd = zza((zzdh) null);
            return this.zzdcd.zzrx();
        }
    }

    final /* synthetic */ void zza(zzajw zzajwVar) {
        if (zzajwVar.isDestroyed()) {
            this.status = 1;
        }
    }

    final /* synthetic */ void zza(zzdh zzdhVar, final zzala zzalaVar) {
        final zzajw zzajyVar;
        try {
            Context context = this.zzlj;
            zzbai zzbaiVar = this.zzbtc;
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcoj)).booleanValue()) {
                zzajyVar = new zzajj(context, zzbaiVar);
            } else {
                zzajyVar = new zzajy(context, zzbaiVar, zzdhVar, null);
            }
            zzajyVar.zza(new zzajx(this, zzalaVar, zzajyVar) { // from class: com.google.android.gms.internal.ads.zzakl
                private final zzakh zzdce;
                private final zzala zzdci;
                private final zzajw zzdcj;

                {
                    this.zzdce = this;
                    this.zzdci = zzalaVar;
                    this.zzdcj = zzajyVar;
                }

                @Override // com.google.android.gms.internal.ads.zzajx
                public final void zzrv() {
                    final zzakh zzakhVar = this.zzdce;
                    final zzala zzalaVar2 = this.zzdci;
                    final zzajw zzajwVar = this.zzdcj;
                    zzaxi.zzdvv.postDelayed(new Runnable(zzakhVar, zzalaVar2, zzajwVar) { // from class: com.google.android.gms.internal.ads.zzakm
                        private final zzakh zzdce;
                        private final zzala zzdci;
                        private final zzajw zzdcj;

                        {
                            this.zzdce = zzakhVar;
                            this.zzdci = zzalaVar2;
                            this.zzdcj = zzajwVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzdce.zza(this.zzdci, this.zzdcj);
                        }
                    }, zzaku.zzdcs);
                }
            });
            zzajyVar.zza("/jsLoaded", new zzako(this, zzalaVar, zzajyVar));
            zzazk zzazkVar = new zzazk();
            zzakp zzakpVar = new zzakp(this, zzdhVar, zzajyVar, zzazkVar);
            zzazkVar.set(zzakpVar);
            zzajyVar.zza("/requestReload", zzakpVar);
            if (this.zzdca.endsWith(".js")) {
                zzajyVar.zzcl(this.zzdca);
            } else if (this.zzdca.startsWith("<html>")) {
                zzajyVar.zzcm(this.zzdca);
            } else {
                zzajyVar.zzcn(this.zzdca);
            }
            zzaxi.zzdvv.postDelayed(new zzakq(this, zzalaVar, zzajyVar), zzaku.zzdcr);
        } catch (Throwable th) {
            zzbad.zzc("Error creating webview.", th);
            com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "SdkJavascriptFactory.loadJavascriptEngine");
            zzalaVar.reject();
        }
    }

    final /* synthetic */ void zza(zzala zzalaVar, zzajw zzajwVar) {
        synchronized (this.lock) {
            if (zzalaVar.getStatus() != -1 && zzalaVar.getStatus() != 1) {
                zzalaVar.reject();
                Executor executor = zzbbm.zzeae;
                zzajwVar.getClass();
                executor.execute(zzakn.zzb(zzajwVar));
                zzawz.zzds("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
