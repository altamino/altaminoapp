package androidx.media3.exoplayer.scheduler;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class RequirementsWatcher {
    private final Context context;
    private final Handler handler = Util.y();
    private final Listener listener;

    @Nullable
    private NetworkCallback networkCallback;
    private int notMetRequirements;

    @Nullable
    private DeviceStatusChangeReceiver receiver;
    private final Requirements requirements;

    public interface Listener {
        void a(RequirementsWatcher requirementsWatcher, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    final class NetworkCallback extends ConnectivityManager.NetworkCallback {
        private boolean networkValidated;
        private boolean receivedCapabilitiesChange;

        private NetworkCallback() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            if (RequirementsWatcher.this.networkCallback != null) {
                RequirementsWatcher.this.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            if (RequirementsWatcher.this.networkCallback != null) {
                RequirementsWatcher.this.g();
            }
        }

        private void e() {
            RequirementsWatcher.this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.scheduler.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f589a.c();
                }
            });
        }

        private void f() {
            RequirementsWatcher.this.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.scheduler.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f588a.d();
                }
            });
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onBlockedStatusChanged(Network network, boolean z6) {
            if (z6) {
                return;
            }
            f();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            boolean zHasCapability = networkCapabilities.hasCapability(16);
            if (this.receivedCapabilitiesChange && this.networkValidated == zHasCapability) {
                if (zHasCapability) {
                    f();
                }
            } else {
                this.receivedCapabilitiesChange = true;
                this.networkValidated = zHasCapability;
                e();
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            e();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            e();
        }
    }

    public Requirements f() {
        return this.requirements;
    }

    private class DeviceStatusChangeReceiver extends BroadcastReceiver {
        private DeviceStatusChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                RequirementsWatcher.this.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int iE = this.requirements.e(this.context);
        if (this.notMetRequirements != iE) {
            this.notMetRequirements = iE;
            this.listener.a(this, iE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if ((this.notMetRequirements & 3) == 0) {
            return;
        }
        e();
    }

    @RequiresApi
    private void h() {
        ConnectivityManager connectivityManager = (ConnectivityManager) Assertions.e((ConnectivityManager) this.context.getSystemService("connectivity"));
        NetworkCallback networkCallback = new NetworkCallback();
        this.networkCallback = networkCallback;
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
    }

    @RequiresApi
    private void k() {
        ((ConnectivityManager) Assertions.e((ConnectivityManager) this.context.getSystemService("connectivity"))).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) Assertions.e(this.networkCallback));
        this.networkCallback = null;
    }

    public int i() {
        this.notMetRequirements = this.requirements.e(this.context);
        IntentFilter intentFilter = new IntentFilter();
        if (this.requirements.n()) {
            if (Util.SDK_INT >= 24) {
                h();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.requirements.h()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.requirements.l()) {
            if (Util.SDK_INT >= 23) {
                intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
        }
        if (this.requirements.p()) {
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
            intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        }
        DeviceStatusChangeReceiver deviceStatusChangeReceiver = new DeviceStatusChangeReceiver();
        this.receiver = deviceStatusChangeReceiver;
        this.context.registerReceiver(deviceStatusChangeReceiver, intentFilter, null, this.handler);
        return this.notMetRequirements;
    }

    public void j() {
        this.context.unregisterReceiver((BroadcastReceiver) Assertions.e(this.receiver));
        this.receiver = null;
        if (Util.SDK_INT < 24 || this.networkCallback == null) {
            return;
        }
        k();
    }

    public RequirementsWatcher(Context context, Listener listener, Requirements requirements) {
        this.context = context.getApplicationContext();
        this.listener = listener;
        this.requirements = requirements;
    }
}
