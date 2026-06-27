package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbmy implements zzue {
    private final Clock zzbsa;
    private zzbgz zzdbs;
    private final zzbml zzffs;
    private final Executor zzffv;
    private boolean zzbxm = false;
    private boolean zzfgs = false;
    private zzbmp zzffx = new zzbmp();

    public zzbmy(Executor executor, zzbml zzbmlVar, Clock clock) {
        this.zzffv = executor;
        this.zzffs = zzbmlVar;
        this.zzbsa = clock;
    }

    private final void zzafg() {
        try {
            final JSONObject jSONObjectZzj = this.zzffs.zzj(this.zzffx);
            if (this.zzdbs != null) {
                this.zzffv.execute(new Runnable(this, jSONObjectZzj) { // from class: com.google.android.gms.internal.ads.zzbmz
                    private final JSONObject zzfga;
                    private final zzbmy zzfgt;

                    {
                        this.zzfgt = this;
                        this.zzfga = jSONObjectZzj;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzfgt.zzh(this.zzfga);
                    }
                });
            }
        } catch (JSONException e) {
            zzawz.zza("Failed to call video active view js", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzue
    public final void zza(zzud zzudVar) {
        this.zzffx.zzbtk = this.zzfgs ? false : zzudVar.zzbtk;
        this.zzffx.timestamp = this.zzbsa.elapsedRealtime();
        this.zzffx.zzfge = zzudVar;
        if (this.zzbxm) {
            zzafg();
        }
    }

    public final void zzg(zzbgz zzbgzVar) {
        this.zzdbs = zzbgzVar;
    }

    public final void disable() {
        this.zzbxm = false;
    }

    public final void enable() {
        this.zzbxm = true;
        zzafg();
    }

    public final void zzax(boolean z) {
        this.zzfgs = z;
    }

    final /* synthetic */ void zzh(JSONObject jSONObject) {
        this.zzdbs.zzb("AFMA_updateActiveView", jSONObject);
    }
}
