package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.Future;

@zzard
/* loaded from: classes2.dex */
public final class zzwb {
    private final Object lock = new Object();
    private zzvu zzbwo;
    private boolean zzbwz;
    private final Context zzlj;

    zzwb(Context context) {
        this.zzlj = context;
    }

    final Future<InputStream> zzb(zzvv zzvvVar) {
        zzwc zzwcVar = new zzwc(this);
        zzwd zzwdVar = new zzwd(this, zzvvVar, zzwcVar);
        zzwh zzwhVar = new zzwh(this, zzwcVar);
        synchronized (this.lock) {
            this.zzbwo = new zzvu(this.zzlj, com.google.android.gms.ads.internal.zzk.zzlu().zzwr(), zzwdVar, zzwhVar);
            this.zzbwo.checkAvailabilityAndConnect();
        }
        return zzwcVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        synchronized (this.lock) {
            if (this.zzbwo == null) {
                return;
            }
            this.zzbwo.disconnect();
            this.zzbwo = null;
            Binder.flushPendingCommands();
        }
    }

    static /* synthetic */ boolean zza(zzwb zzwbVar, boolean z) {
        zzwbVar.zzbwz = true;
        return true;
    }
}
