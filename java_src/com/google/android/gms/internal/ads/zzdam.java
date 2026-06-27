package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbp;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzdam implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final String packageName;
    private final HandlerThread zzdxs = new HandlerThread("GassClient");

    @VisibleForTesting
    private zzdba zzgny;
    private final String zzgnz;
    private final LinkedBlockingQueue<zzbp.zza> zzgoa;

    public zzdam(Context context, String str, String str2) {
        this.packageName = str;
        this.zzgnz = str2;
        this.zzdxs.start();
        this.zzgny = new zzdba(context, this.zzdxs.getLooper(), this, this);
        this.zzgoa = new LinkedBlockingQueue<>();
        this.zzgny.checkAvailabilityAndConnect();
    }

    public final zzbp.zza zzdr(int i) throws InterruptedException {
        zzbp.zza zzaVarPoll;
        try {
            zzaVarPoll = this.zzgoa.poll(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zzaVarPoll = null;
        }
        return zzaVarPoll == null ? zzang() : zzaVarPoll;
    }

    private final zzdbf zzanf() {
        try {
            return this.zzgny.zzanm();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) throws InterruptedException {
        try {
            this.zzgoa.put(zzang());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzdbf zzdbfVarZzanf = zzanf();
        if (zzdbfVarZzanf != null) {
            try {
                try {
                    this.zzgoa.put(zzdbfVarZzanf.zza(new zzdbb(this.packageName, this.zzgnz)).zzann());
                    zzakh();
                    this.zzdxs.quit();
                } catch (Throwable unused) {
                    this.zzgoa.put(zzang());
                    zzakh();
                    this.zzdxs.quit();
                }
            } catch (InterruptedException unused2) {
                zzakh();
                this.zzdxs.quit();
            } catch (Throwable th) {
                zzakh();
                this.zzdxs.quit();
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) throws InterruptedException {
        try {
            this.zzgoa.put(zzang());
        } catch (InterruptedException unused) {
        }
    }

    private final void zzakh() {
        zzdba zzdbaVar = this.zzgny;
        if (zzdbaVar != null) {
            if (zzdbaVar.isConnected() || this.zzgny.isConnecting()) {
                this.zzgny.disconnect();
            }
        }
    }

    @VisibleForTesting
    private static zzbp.zza zzang() {
        return (zzbp.zza) zzbp.zza.zzam().zzau(32768L).zzaya();
    }
}
