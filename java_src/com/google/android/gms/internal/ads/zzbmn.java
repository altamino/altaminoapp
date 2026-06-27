package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbmn implements com.google.android.gms.ads.internal.overlay.zzo, zzbrw, zzbrx, zzue {
    private final Clock zzbsa;
    private final zzbmg zzffr;
    private final zzbml zzffs;
    private final zzamd<JSONObject, JSONObject> zzffu;
    private final Executor zzffv;
    private final Set<zzbgz> zzfft = new HashSet();
    private final AtomicBoolean zzffw = new AtomicBoolean(false);
    private final zzbmp zzffx = new zzbmp();
    private boolean zzffy = false;
    private WeakReference<Object> zzffz = new WeakReference<>(this);

    public zzbmn(zzaly zzalyVar, zzbml zzbmlVar, Executor executor, zzbmg zzbmgVar, Clock clock) {
        this.zzffr = zzbmgVar;
        zzaln<JSONObject> zzalnVar = zzalo.zzddi;
        this.zzffu = zzalyVar.zzb("google.afma.activeView.handleUpdate", zzalnVar, zzalnVar);
        this.zzffs = zzbmlVar;
        this.zzffv = executor;
        this.zzbsa = clock;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzta() {
    }

    public final synchronized void zzafd() {
        if (!(this.zzffz.get() != null)) {
            zzaff();
            return;
        }
        if (!this.zzffy && this.zzffw.get()) {
            try {
                this.zzffx.timestamp = this.zzbsa.elapsedRealtime();
                final JSONObject jSONObjectZzj = this.zzffs.zzj(this.zzffx);
                for (final zzbgz zzbgzVar : this.zzfft) {
                    this.zzffv.execute(new Runnable(zzbgzVar, jSONObjectZzj) { // from class: com.google.android.gms.internal.ads.zzbmo
                        private final zzbgz zzemf;
                        private final JSONObject zzfga;

                        {
                            this.zzemf = zzbgzVar;
                            this.zzfga = jSONObjectZzj;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzemf.zzb("AFMA_updateActiveView", this.zzfga);
                        }
                    });
                }
                zzbao.zzb(this.zzffu.zzf(jSONObjectZzj), "ActiveViewListener.callActiveViewJs");
            } catch (Exception e) {
                zzawz.zza("Failed to call ActiveViewJS", e);
            }
        }
    }

    private final void zzafe() {
        Iterator<zzbgz> it = this.zzfft.iterator();
        while (it.hasNext()) {
            this.zzffr.zze(it.next());
        }
        this.zzffr.zzafc();
    }

    public final synchronized void zzaff() {
        zzafe();
        this.zzffy = true;
    }

    public final synchronized void zzf(zzbgz zzbgzVar) {
        this.zzfft.add(zzbgzVar);
        this.zzffr.zzd(zzbgzVar);
    }

    public final void zzq(Object obj) {
        this.zzffz = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final synchronized void zza(zzud zzudVar) {
        this.zzffx.zzbtk = zzudVar.zzbtk;
        this.zzffx.zzfge = zzudVar;
        zzafd();
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final synchronized void zzbp(Context context) {
        this.zzffx.zzfgb = true;
        zzafd();
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final synchronized void zzbq(Context context) {
        this.zzffx.zzfgb = false;
        zzafd();
    }

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final synchronized void zzbr(Context context) {
        this.zzffx.zzfgd = "u";
        zzafd();
        zzafe();
        this.zzffy = true;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void onPause() {
        this.zzffx.zzfgb = true;
        zzafd();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void onResume() {
        this.zzffx.zzfgb = false;
        zzafd();
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final synchronized void onAdImpression() {
        if (this.zzffw.compareAndSet(false, true)) {
            this.zzffr.zza(this);
            zzafd();
        }
    }
}
