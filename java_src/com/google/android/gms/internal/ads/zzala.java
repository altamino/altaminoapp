package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
public final class zzala extends zzbbw<zzajw> {
    private zzayp<zzajw> zzdcc;
    private final Object lock = new Object();
    private boolean zzdcw = false;
    private int zzdcx = 0;

    public zzala(zzayp<zzajw> zzaypVar) {
        this.zzdcc = zzaypVar;
    }

    public final zzakw zzrx() {
        zzakw zzakwVar = new zzakw(this);
        synchronized (this.lock) {
            zza(new zzalb(this, zzakwVar), new zzalc(this, zzakwVar));
            Preconditions.checkState(this.zzdcx >= 0);
            this.zzdcx++;
        }
        return zzakwVar;
    }

    protected final void zzry() {
        synchronized (this.lock) {
            Preconditions.checkState(this.zzdcx > 0);
            zzawz.zzds("Releasing 1 reference for JS Engine");
            this.zzdcx--;
            zzsa();
        }
    }

    public final void zzrz() {
        synchronized (this.lock) {
            Preconditions.checkState(this.zzdcx >= 0);
            zzawz.zzds("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.zzdcw = true;
            zzsa();
        }
    }

    private final void zzsa() {
        synchronized (this.lock) {
            Preconditions.checkState(this.zzdcx >= 0);
            if (this.zzdcw && this.zzdcx == 0) {
                zzawz.zzds("No reference is left (including root). Cleaning up engine.");
                zza(new zzald(this), new zzbbu());
            } else {
                zzawz.zzds("There are still references to the engine. Not destroying.");
            }
        }
    }
}
