package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class zzchv extends zzchx {
    public zzchv(Context context) {
        this.zzfxi = new zzarf(context, com.google.android.gms.ads.internal.zzk.zzlu().zzwr(), this, this);
    }

    public final zzbbh<InputStream> zzf(zzarx zzarxVar) {
        synchronized (this.mLock) {
            if (this.zzfxf) {
                return this.zzddv;
            }
            this.zzfxf = true;
            this.zzfxh = zzarxVar;
            this.zzfxi.checkAvailabilityAndConnect();
            this.zzddv.zza(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzchw
                private final zzchv zzfxe;

                {
                    this.zzfxe = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzfxe.zzakh();
                }
            }, zzbbm.zzeaf);
            return this.zzddv;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchx, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzbad.zzdp("Cannot connect to remote service, fallback to local instance.");
        this.zzddv.setException(new zzcie(0));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.zzfxg) {
                this.zzfxg = true;
                try {
                    this.zzfxi.zztr().zza(this.zzfxh, new zzchy(this));
                } catch (RemoteException | IllegalArgumentException unused) {
                    this.zzddv.setException(new zzcie(0));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzk.zzlk().zza(th, "RemoteAdRequestClientTask.onConnected");
                    this.zzddv.setException(new zzcie(0));
                }
            }
        }
    }
}
