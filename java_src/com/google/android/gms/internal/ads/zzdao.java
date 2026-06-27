package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes2.dex */
final class zzdao implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    private final Object lock = new Object();
    private boolean zzfxf = false;
    private boolean zzfxg = false;
    private final zzdba zzgoc;
    private final zzdau zzgod;

    zzdao(Context context, Looper looper, zzdau zzdauVar) {
        this.zzgod = zzdauVar;
        this.zzgoc = new zzdba(context, looper, this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }

    final void zzanh() {
        synchronized (this.lock) {
            if (!this.zzfxf) {
                this.zzfxf = true;
                this.zzgoc.checkAvailabilityAndConnect();
            }
        }
    }

    private final void zzakh() {
        synchronized (this.lock) {
            if (this.zzgoc.isConnected() || this.zzgoc.isConnecting()) {
                this.zzgoc.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.lock) {
            if (this.zzfxg) {
                return;
            }
            this.zzfxg = true;
            try {
                this.zzgoc.zzanm().zza(new zzday(this.zzgod.toByteArray()));
                zzakh();
            } catch (Exception unused) {
                zzakh();
            } catch (Throwable th) {
                zzakh();
                throw th;
            }
        }
    }
}
