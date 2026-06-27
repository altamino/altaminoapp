package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
@TargetApi(16)
/* loaded from: classes2.dex */
public final class zzbdk {

    @VisibleForTesting
    private static int zzefc;

    @VisibleForTesting
    private static int zzefd;
    private zzge zzefe;
    private zzhd zzeff;
    private zzgn zzefg;
    private zzbdo zzefh;
    private final zzbdn zzefi;
    private final zzbdp zzefj;
    private final zzbdm zzefk;

    public zzbdk() {
        zzbdl zzbdlVar = null;
        this.zzefi = new zzbdn(this);
        this.zzefj = new zzbdp(this);
        this.zzefk = new zzbdm(this);
        Preconditions.checkMainThread("ExoPlayer must be created on the main UI thread.");
        if (zzawz.zzvj()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 29);
            sb.append("AdExoPlayerHelper initialize ");
            sb.append(strValueOf);
            zzawz.zzds(sb.toString());
        }
        zzefc++;
        this.zzefe = zzgg.zzn(2);
        this.zzefe.zza(this.zzefi);
    }

    public static int zzyp() {
        return zzefc;
    }

    public static int zzyq() {
        return zzefd;
    }

    public final boolean zza(zzhn zzhnVar) {
        if (this.zzefe == null) {
            return false;
        }
        this.zzeff = new zzhd(zzhnVar, 1, 0L, zzaxi.zzdvv, this.zzefj, -1);
        this.zzefg = new zzgn(zzhnVar, zzaxi.zzdvv, this.zzefk);
        this.zzefe.zza(this.zzeff, this.zzefg);
        zzefd++;
        return true;
    }

    public final void zzyr() {
        zzge zzgeVar = this.zzefe;
        if (zzgeVar != null) {
            zzgeVar.release();
            this.zzefe = null;
            zzefd--;
        }
    }

    public final synchronized void zza(zzbdo zzbdoVar) {
        this.zzefh = zzbdoVar;
    }

    public final synchronized void removeListener() {
        this.zzefh = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzm(String str, String str2) {
        if (this.zzefh != null) {
            this.zzefh.zzl(str, str2);
        }
    }

    public final zzge zzys() {
        return this.zzefe;
    }

    public final zzhd zzyt() {
        return this.zzeff;
    }

    public final zzgn zzyu() {
        return this.zzefg;
    }

    public final void zza(zzgh zzghVar, zzhh zzhhVar, zzgq zzgqVar) {
        this.zzefi.zzb(zzghVar);
        this.zzefj.zza(zzhhVar);
        this.zzefk.zza(zzgqVar);
    }

    public final void finalize() throws Throwable {
        zzefc--;
        if (zzawz.zzvj()) {
            String strValueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 27);
            sb.append("AdExoPlayerHelper finalize ");
            sb.append(strValueOf);
            zzawz.zzds(sb.toString());
        }
    }
}
