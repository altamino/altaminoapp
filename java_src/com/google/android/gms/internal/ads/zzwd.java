package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
final class zzwd implements BaseGmsClient.BaseConnectionCallbacks {
    final /* synthetic */ zzwb zzbxa;
    private final /* synthetic */ zzvv zzbxb;
    private final /* synthetic */ zzbbr zzbxc;

    zzwd(zzwb zzwbVar, zzvv zzvvVar, zzbbr zzbbrVar) {
        this.zzbxa = zzwbVar;
        this.zzbxb = zzvvVar;
        this.zzbxc = zzbbrVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.zzbxa.lock) {
            if (this.zzbxa.zzbwz) {
                return;
            }
            zzwb.zza(this.zzbxa, true);
            final zzvu zzvuVar = this.zzbxa.zzbwo;
            if (zzvuVar == null) {
                return;
            }
            final zzvv zzvvVar = this.zzbxb;
            final zzbbr zzbbrVar = this.zzbxc;
            final zzbbh<?> zzbbhVarZzc = zzaxg.zzc(new Runnable(this, zzvuVar, zzvvVar, zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzwe
                private final zzwd zzbxd;
                private final zzvu zzbxe;
                private final zzvv zzbxf;
                private final zzbbr zzbxg;

                {
                    this.zzbxd = this;
                    this.zzbxe = zzvuVar;
                    this.zzbxf = zzvvVar;
                    this.zzbxg = zzbbrVar;
                }

                @Override // java.lang.Runnable
                public final void run() throws IOException {
                    zzwd zzwdVar = this.zzbxd;
                    zzvu zzvuVar2 = this.zzbxe;
                    zzvv zzvvVar2 = this.zzbxf;
                    zzbbr zzbbrVar2 = this.zzbxg;
                    try {
                        zzvs zzvsVarZza = zzvuVar2.zznk().zza(zzvvVar2);
                        if (!zzvsVarZza.zznh()) {
                            zzbbrVar2.setException(new RuntimeException("No entry contents."));
                            zzwdVar.zzbxa.disconnect();
                            return;
                        }
                        zzwg zzwgVar = new zzwg(zzwdVar, zzvsVarZza.zzni(), 1);
                        int i = zzwgVar.read();
                        if (i == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzwgVar.unread(i);
                        zzbbrVar2.set(zzwgVar);
                    } catch (RemoteException | IOException e) {
                        zzbad.zzc("Unable to obtain a cache service instance.", e);
                        zzbbrVar2.setException(e);
                        zzwdVar.zzbxa.disconnect();
                    }
                }
            });
            zzbbr zzbbrVar2 = this.zzbxc;
            final zzbbr zzbbrVar3 = this.zzbxc;
            zzbbrVar2.zza(new Runnable(zzbbrVar3, zzbbhVarZzc) { // from class: com.google.android.gms.internal.ads.zzwf
                private final zzbbr zzbxh;
                private final Future zzbxi;

                {
                    this.zzbxh = zzbbrVar3;
                    this.zzbxi = zzbbhVarZzc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbbr zzbbrVar4 = this.zzbxh;
                    Future future = this.zzbxi;
                    if (zzbbrVar4.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzbbm.zzeaf);
        }
    }
}
