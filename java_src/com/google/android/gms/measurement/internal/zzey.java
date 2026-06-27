package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzey implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    final /* synthetic */ zzeg zzqq;
    private volatile boolean zzqw;
    private volatile zzat zzqx;

    protected zzey(zzeg zzegVar) {
        this.zzqq = zzegVar;
    }

    public final void zzb(Intent intent) {
        this.zzqq.zzq();
        Context context = this.zzqq.getContext();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            if (this.zzqw) {
                this.zzqq.zzad().zzdi().zzaq("Connection attempt already in progress");
                return;
            }
            this.zzqq.zzad().zzdi().zzaq("Using local app measurement service");
            this.zzqw = true;
            connectionTracker.bindService(context, intent, this.zzqq.zzqj, 129);
        }
    }

    public final void zzfl() {
        if (this.zzqx != null && (this.zzqx.isConnected() || this.zzqx.isConnecting())) {
            this.zzqx.disconnect();
        }
        this.zzqx = null;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzam zzaoVar;
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.zzqw = false;
                this.zzqq.zzad().zzda().zzaq("Service connected with null binder");
                return;
            }
            zzam zzamVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    if (iBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                        if (iInterfaceQueryLocalInterface instanceof zzam) {
                            zzaoVar = (zzam) iInterfaceQueryLocalInterface;
                        } else {
                            zzaoVar = new zzao(iBinder);
                        }
                        zzamVar = zzaoVar;
                    }
                    this.zzqq.zzad().zzdi().zzaq("Bound to IMeasurementService interface");
                } else {
                    this.zzqq.zzad().zzda().zza("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.zzqq.zzad().zzda().zzaq("Service connect failed to get IMeasurementService");
            }
            if (zzamVar == null) {
                this.zzqw = false;
                try {
                    ConnectionTracker.getInstance().unbindService(this.zzqq.getContext(), this.zzqq.zzqj);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.zzqq.zzac().zza(new zzez(this, zzamVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) throws IllegalStateException {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        this.zzqq.zzad().zzdh().zzaq("Service disconnected");
        this.zzqq.zzac().zza(new zzfa(this, componentName));
    }

    public final void zzfm() {
        this.zzqq.zzq();
        Context context = this.zzqq.getContext();
        synchronized (this) {
            if (this.zzqw) {
                this.zzqq.zzad().zzdi().zzaq("Connection attempt already in progress");
                return;
            }
            if (this.zzqx != null && (this.zzqx.isConnecting() || this.zzqx.isConnected())) {
                this.zzqq.zzad().zzdi().zzaq("Already awaiting connection attempt");
                return;
            }
            this.zzqx = new zzat(context, Looper.getMainLooper(), this, this);
            this.zzqq.zzad().zzdi().zzaq("Connecting to remote service");
            this.zzqw = true;
            this.zzqx.checkAvailabilityAndConnect();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                this.zzqq.zzac().zza(new zzfb(this, this.zzqx.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.zzqx = null;
                this.zzqw = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) throws IllegalStateException {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        this.zzqq.zzad().zzdh().zzaq("Service connection suspended");
        this.zzqq.zzac().zza(new zzfc(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) throws IllegalStateException {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzau zzauVarZzei = this.zzqq.zzl.zzei();
        if (zzauVarZzei != null) {
            zzauVarZzei.zzdd().zza("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.zzqw = false;
            this.zzqx = null;
        }
        this.zzqq.zzac().zza(new zzfd(this));
    }

    static /* synthetic */ boolean zza(zzey zzeyVar, boolean z) {
        zzeyVar.zzqw = false;
        return false;
    }
}
