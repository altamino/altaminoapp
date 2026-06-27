package com.facebook.ads.redexgen.X;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.AdsMessengerServiceApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.ipc.AdsMessengerService;
import com.facebook.ads.internal.ipc.AdsProcessPriorityService;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.process.ProcessUtils;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.8k, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C03668k implements AdsMessengerServiceApi {
    private Messenger A00;
    private boolean A01;
    private final ServiceConnection A02 = new ServiceConnection() { // from class: com.facebook.ads.redexgen.X.8i
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.A00.A01 = true;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            this.A00.A01 = false;
            this.A00.A03.unbindService(this.A00.A02);
        }
    };
    private final AdsMessengerService A03;

    public C03668k(AdsMessengerService adsMessengerService) {
        this.A03 = adsMessengerService;
    }

    public final IBinder onBind(Intent intent) {
        return this.A00.getBinder();
    }

    public final void onCreate() {
        ProcessUtils.sRemoteProcess = true;
        DynamicLoaderFactory.makeLoader(this.A03).getInitApi().initialize(this.A03, (MultithreadedBundleWrapper) null, (AudienceNetworkAds.InitListener) null, 2);
        this.A00 = new Messenger(new HandlerC03658j(this.A03.getApplicationContext()));
        if (K1.A0r(this.A03.getApplicationContext())) {
            this.A03.bindService(new Intent(this.A03.getApplicationContext(), (Class<?>) AdsProcessPriorityService.class), this.A02, 1);
        }
    }

    public final void onDestroy() {
        C02634h.A00().A06();
        if (this.A01) {
            this.A03.unbindService(this.A02);
        }
    }
}
