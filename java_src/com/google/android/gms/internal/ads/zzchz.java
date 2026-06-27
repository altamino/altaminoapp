package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class zzchz extends zzchx {
    public zzchz(Context context) {
        this.zzfxi = new zzarf(context, com.google.android.gms.ads.internal.zzk.zzlu().zzwr(), this, this);
    }

    public final zzbbh<InputStream> zzg(zzarx zzarxVar) {
        synchronized (this.mLock) {
            if (this.zzfxf) {
                return this.zzddv;
            }
            this.zzfxf = true;
            this.zzfxh = zzarxVar;
            this.zzfxi.checkAvailabilityAndConnect();
            this.zzddv.zza(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcia
                private final zzchz zzfxk;

                {
                    this.zzfxk = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfxk.zzakh();
                }
            }, zzbbm.zzeaf);
            return this.zzddv;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.zzfxg) {
                this.zzfxg = true;
                try {
                    this.zzfxi.zztr().zzb(this.zzfxh, new zzchy(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.zzddv.setException(new zzcie(0));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "RemoteSignalsClientTask.onConnected");
                    this.zzddv.setException(new zzcie(0));
                }
            }
        }
    }
}
