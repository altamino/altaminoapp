package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public final class zzvn {
    private zzvu zzbwo;
    private zzvy zzbwp;
    private Context zzlj;
    private final Runnable zzbwn = new zzvo(this);
    private final Object lock = new Object();

    public final void initialize(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.lock) {
            if (this.zzlj != null) {
                return;
            }
            this.zzlj = context.getApplicationContext();
            if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcto)).booleanValue()) {
                connect();
            } else {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzctn)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzk.zzlj().zza(new zzvp(this));
                }
            }
        }
    }

    public final void zzng() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzctp)).booleanValue()) {
            synchronized (this.lock) {
                connect();
                com.google.android.gms.ads.internal.zzk.zzlg();
                zzaxi.zzdvv.removeCallbacks(this.zzbwn);
                com.google.android.gms.ads.internal.zzk.zzlg();
                zzaxi.zzdvv.postDelayed(this.zzbwn, ((Long) zzyt.zzpe().zzd(zzacu.zzctq)).longValue());
            }
        }
    }

    public final zzvs zza(zzvv zzvvVar) {
        synchronized (this.lock) {
            if (this.zzbwp == null) {
                return new zzvs();
            }
            try {
                return this.zzbwp.zza(zzvvVar);
            } catch (RemoteException e) {
                zzbad.zzc("Unable to call into cache service.", e);
                return new zzvs();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connect() {
        synchronized (this.lock) {
            if (this.zzlj != null && this.zzbwo == null) {
                this.zzbwo = zza(new zzvq(this), new zzvr(this));
                this.zzbwo.checkAvailabilityAndConnect();
            }
        }
    }

    @VisibleForTesting
    private final synchronized zzvu zza(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        return new zzvu(this.zzlj, com.google.android.gms.ads.internal.zzk.zzlu().zzwr(), baseConnectionCallbacks, baseOnConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        synchronized (this.lock) {
            if (this.zzbwo == null) {
                return;
            }
            if (this.zzbwo.isConnected() || this.zzbwo.isConnecting()) {
                this.zzbwo.disconnect();
            }
            this.zzbwo = null;
            this.zzbwp = null;
            Binder.flushPendingCommands();
        }
    }

    static /* synthetic */ zzvu zza(zzvn zzvnVar, zzvu zzvuVar) {
        zzvnVar.zzbwo = null;
        return null;
    }
}
