package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class zzbjn {
    private final zzbai zzbrc;
    private final WeakReference<Context> zzeoe;
    private final Context zzlj;

    public static class zza {
        private zzbai zzbrc;
        private WeakReference<Context> zzeoe;
        private Context zzlj;

        public final zza zza(zzbai zzbaiVar) {
            this.zzbrc = zzbaiVar;
            return this;
        }

        public final zza zzbo(Context context) {
            this.zzeoe = new WeakReference<>(context);
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.zzlj = context;
            return this;
        }
    }

    private zzbjn(zza zzaVar) {
        this.zzbrc = zzaVar.zzbrc;
        this.zzlj = zzaVar.zzlj;
        this.zzeoe = zzaVar.zzeoe;
    }

    final Context zzaco() {
        return this.zzlj;
    }

    final Context zzacp() {
        if (this.zzeoe.get() != null) {
            return this.zzeoe.get();
        }
        return this.zzlj;
    }

    final zzbai zzacq() {
        return this.zzbrc;
    }

    final String zzacr() {
        return com.google.android.gms.ads.internal.zzk.zzlg().zzq(this.zzlj, this.zzbrc.zzbsx);
    }
}
