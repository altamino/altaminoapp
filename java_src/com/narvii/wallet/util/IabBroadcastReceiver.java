package com.narvii.wallet.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes3.dex */
public class IabBroadcastReceiver extends BroadcastReceiver {
    public static final String ACTION = "com.android.vending.billing.PURCHASES_UPDATED";
    private final IabBroadcastListener mListener;

    public interface IabBroadcastListener {
        void receivedBroadcast();
    }

    public IabBroadcastReceiver(IabBroadcastListener iabBroadcastListener) {
        this.mListener = iabBroadcastListener;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        IabBroadcastListener iabBroadcastListener = this.mListener;
        if (iabBroadcastListener != null) {
            iabBroadcastListener.receivedBroadcast();
        }
    }
}
