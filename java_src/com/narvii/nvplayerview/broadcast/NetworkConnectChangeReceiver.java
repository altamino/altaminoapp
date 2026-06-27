package com.narvii.nvplayerview.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class NetworkConnectChangeReceiver extends BroadcastReceiver {
    private static final IntentFilter filter = new IntentFilter();
    private static NetworkConnectChangeReceiver instance;
    private static List<IWifiStateChangeListener> listeners;

    public interface IWifiStateChangeListener {
        void onWifiStateChange(boolean z);
    }

    public static NetworkConnectChangeReceiver getInstance(Context context) {
        if (instance == null) {
            instance = new NetworkConnectChangeReceiver();
            filter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            listeners = new ArrayList();
            context.getApplicationContext().registerReceiver(instance, filter);
        }
        return instance;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.net.wifi.WIFI_STATE_CHANGED".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("wifi_state", 1);
            if (intExtra == 1) {
                Iterator<IWifiStateChangeListener> it = listeners.iterator();
                while (it.hasNext()) {
                    it.next().onWifiStateChange(false);
                }
            } else if (intExtra == 3) {
                Iterator<IWifiStateChangeListener> it2 = listeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onWifiStateChange(true);
                }
            }
        }
    }

    public static IntentFilter getFilter() {
        return filter;
    }

    public void registerWifiStateChangeListener(IWifiStateChangeListener iWifiStateChangeListener) {
        if (listeners.contains(iWifiStateChangeListener)) {
            return;
        }
        listeners.add(iWifiStateChangeListener);
    }

    public void unRegisterWifiStateChangeListener(IWifiStateChangeListener iWifiStateChangeListener) {
        listeners.remove(iWifiStateChangeListener);
    }
}
