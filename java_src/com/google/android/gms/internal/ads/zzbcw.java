package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public final class zzbcw {
    private final Context zzcko;
    private final zzbdf zzebt;
    private final ViewGroup zzecp;
    private zzbcq zzecq;

    public zzbcw(Context context, ViewGroup viewGroup, zzbgz zzbgzVar) {
        this(context, viewGroup, zzbgzVar, null);
    }

    @VisibleForTesting
    private zzbcw(Context context, ViewGroup viewGroup, zzbdf zzbdfVar, zzbcq zzbcqVar) {
        this.zzcko = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzecp = viewGroup;
        this.zzebt = zzbdfVar;
        this.zzecq = null;
    }

    public final void zze(int i, int i2, int i3, int i4) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzbcq zzbcqVar = this.zzecq;
        if (zzbcqVar != null) {
            zzbcqVar.zzd(i, i2, i3, i4);
        }
    }

    public final void zza(int i, int i2, int i3, int i4, int i5, boolean z, zzbde zzbdeVar) {
        if (this.zzecq != null) {
            return;
        }
        zzadb.zza(this.zzebt.zzyg().zzqw(), this.zzebt.zzyc(), "vpr2");
        Context context = this.zzcko;
        zzbdf zzbdfVar = this.zzebt;
        this.zzecq = new zzbcq(context, zzbdfVar, i5, z, zzbdfVar.zzyg().zzqw(), zzbdeVar);
        this.zzecp.addView(this.zzecq, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzecq.zzd(i, i2, i3, i4);
        this.zzebt.zzao(false);
    }

    public final zzbcq zzxw() {
        Preconditions.checkMainThread("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzecq;
    }

    public final void onPause() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzbcq zzbcqVar = this.zzecq;
        if (zzbcqVar != null) {
            zzbcqVar.pause();
        }
    }

    public final void onDestroy() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzbcq zzbcqVar = this.zzecq;
        if (zzbcqVar != null) {
            zzbcqVar.destroy();
            this.zzecp.removeView(this.zzecq);
            this.zzecq = null;
        }
    }
}
